import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:convert';
import 'features/auth/models/user_model.dart';
import '../core/database/app_database.dart';
import '../core/network/api_client.dart';
import '../core/sync/sync_service.dart';

// ─── Infrastructure ───────────────────────────────────────────────────────────

final dbProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(db.close);
  return db;
});

final apiClientProvider = Provider<ApiClient>((ref) => ApiClient());

final syncServiceProvider = Provider<SyncService>((ref) =>
    SyncService(ref.read(dbProvider), ref.read(apiClientProvider)));

final connectivityProvider = StreamProvider<List<ConnectivityResult>>((ref) =>
    Connectivity().onConnectivityChanged);

final isOnlineProvider = Provider<bool>((ref) {
  final conn = ref.watch(connectivityProvider);
  return conn.when(
    data: (results) => results.any((r) => r != ConnectivityResult.none),
    loading: () => false,
    error: (_, __) => false,
  );
});

// ─── Auth ─────────────────────────────────────────────────────────────────────

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) =>
    AuthNotifier(ref.read(apiClientProvider), ref.read(syncServiceProvider)));

class AuthState {
  final bool isLoading;
  final bool isLoggedIn;
  final String? error;
  final User? user;

  const AuthState({
    this.isLoading = false,
    this.isLoggedIn = false,
    this.error,
    this.user,
  });

  AuthState copyWith({bool? isLoading, bool? isLoggedIn, String? error, User? user}) =>
      AuthState(
        isLoading: isLoading ?? this.isLoading,
        isLoggedIn: isLoggedIn ?? this.isLoggedIn,
        error: error,
        user: user ?? this.user,
      );
}

class AuthNotifier extends StateNotifier<AuthState> {
  final ApiClient _api;
  final SyncService _sync;
  final _storage = const FlutterSecureStorage();

  AuthNotifier(this._api, this._sync) : super(const AuthState()) {
    _checkSession();
  }

  Future<void> _checkSession() async {
    final syskey = await _storage.read(key: 'syskey');
    final userJson = await _storage.read(key: 'user');
    if (syskey != null && userJson != null) {
      final user = User.fromJson(jsonDecode(userJson) as Map<String, dynamic>);
      state = state.copyWith(isLoggedIn: true, user: user);
    }
  }

  Future<void> login(String companyName, String username, String password, bool rememberMe) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      var user = await _api.login(companyName, username, password);
      // persist syskey for future requests
      if (user.syskey != null) {
        await _storage.write(key: 'syskey', value: user.syskey);
      }
      // store credentials only when remember me is on, matching example behaviour
      user = User(
        server: user.server, db: user.db, loginNo: user.loginNo,
        loginId: user.loginId, username: user.username,
        userCode: rememberMe ? username : '',
        password: rememberMe ? password : '',
        syskey: rememberMe ? user.syskey : '',
        isRememberMe: rememberMe,
        isEditor: user.isEditor, defaultLanguage: user.defaultLanguage,
        languagesList: user.languagesList, organisation: user.organisation,
        companyEmail: user.companyEmail, isDashboard: user.isDashboard,
        logoImage: user.logoImage, orgId: user.orgId,
        loggedOrgId: user.loggedOrgId, userId: user.userId,
        apiKey: user.apiKey, mobile: user.mobile, errorNo: user.errorNo,
        validationKey: user.validationKey, userBranches: user.userBranches,
        managerDb: user.managerDb, salesDb: user.salesDb,
        accountDb: user.accountDb, employeeDb: user.employeeDb,
        purchaseDb: user.purchaseDb, hrmDb: user.hrmDb, rtmDb: user.rtmDb,
      );
      await _storage.write(key: 'user', value: jsonEncode(user.toJson()));
      await _sync.pullMasterData(user.apiKey ?? '');
      state = state.copyWith(isLoading: false, isLoggedIn: true, user: user);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> logout() async {
    await _storage.deleteAll();
    state = const AuthState();
  }

  Future<void> syncNow() async {
    final apiKey = state.user?.apiKey;
    if (apiKey == null) return;
    state = state.copyWith(isLoading: true, error: null);
    try {
      await _sync.pullMasterData(apiKey, incremental: true);
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}

// ─── Customers ────────────────────────────────────────────────────────────────

final customersProvider = FutureProvider<List<Customer>>((ref) =>
    ref.read(dbProvider).getAllCustomers());
final customerSearchProvider = FutureProvider.family<List<Customer>, String>((ref, q) =>
    q.isEmpty ? ref.read(dbProvider).getAllCustomers() : ref.read(dbProvider).searchCustomers(q));

// ─── Items ────────────────────────────────────────────────────────────────────

final itemsProvider = FutureProvider<List<ItemHeader>>((ref) =>
    ref.read(dbProvider).getAllItems());
final itemSearchProvider = FutureProvider.family<List<ItemHeader>, String>((ref, q) =>
    q.isEmpty ? ref.read(dbProvider).getAllItems() : ref.read(dbProvider).searchItems(q));
final itemPricesProvider = FutureProvider.family<List<ItemPrice>, String>((ref, itemNo) =>
    ref.read(dbProvider).getItemPrices(itemNo));
final itemUomsProvider = FutureProvider.family<List<ItemUom>, String>((ref, itemNo) =>
    ref.read(dbProvider).getItemUoms(itemNo));

// ─── Accounts ─────────────────────────────────────────────────────────────────

final accountsProvider = FutureProvider<List<Account>>((ref) =>
    ref.read(dbProvider).getAllAccounts());

// ─── Vendors ──────────────────────────────────────────────────────────────────

final vendorsProvider = FutureProvider<List<Vendor>>((ref) =>
    ref.read(dbProvider).getAllVendors());

// ─── Payment Terms ────────────────────────────────────────────────────────────

final paymentTermsProvider = FutureProvider<List<PaymentTerm>>((ref) =>
    ref.read(dbProvider).getAllPaymentTerms());

// ─── Price Lists ──────────────────────────────────────────────────────────────

final priceListsProvider = FutureProvider<List<PriceList>>((ref) =>
    ref.read(dbProvider).getAllPriceLists());

// ─── Sales Persons ────────────────────────────────────────────────────────────

final salesPersonsProvider = FutureProvider<List<SalesPerson>>((ref) =>
    ref.read(dbProvider).getAllSalesPersons());

// ─── Stores ───────────────────────────────────────────────────────────────────

final storesProvider = FutureProvider<List<Store>>((ref) =>
    ref.read(dbProvider).getAllStores());

// ─── Series Lists ─────────────────────────────────────────────────────────────

final seriesListsProvider = FutureProvider<List<SeriesList>>((ref) =>
    ref.read(dbProvider).getAllSeriesLists());

// ─── Organisation Detail ──────────────────────────────────────────────────────

final organisationDetailProvider = FutureProvider<OrganisationDetail?>((ref) =>
    ref.read(dbProvider).getOrganisationDetail());

// ─── General Settings ─────────────────────────────────────────────────────────

final generalSettingsProvider = FutureProvider<GeneralSetting?>((ref) =>
    ref.read(dbProvider).getGeneralSettings());

// ─── Employees ───────────────────────────────────────────────────────────────

final employeesProvider = FutureProvider<List<EmployeeList>>((ref) =>
    ref.read(dbProvider).getAllEmployees());

// ─── Master Users ────────────────────────────────────────────────────────────

final masterUsersProvider = FutureProvider<List<MasterUser>>((ref) =>
    ref.read(dbProvider).getAllMasterUsers());

// ─── Series For Nextnums ─────────────────────────────────────────────────────

final seriesForNextnumsProvider = FutureProvider<List<SeriesForNextnum>>((ref) =>
    ref.read(dbProvider).getAllSeriesForNextnums());

// ─── Frieghts ─────────────────────────────────────────────────────────────────

final frieghtsProvider = FutureProvider<List<Frieght>>((ref) =>
    ref.read(dbProvider).getAllFrieghts());

// ─── Mode Of Dispatches ───────────────────────────────────────────────────────

final modeOfDispatchesProvider = FutureProvider<List<ModeOfDispatche>>((ref) =>
    ref.read(dbProvider).getAllModeOfDispatches());

// ─── Item Batches ─────────────────────────────────────────────────────────────

final itemBatchesProvider = FutureProvider.family<List<ItemBatche>, String>((ref, itemNo) =>
    ref.read(dbProvider).getItemBatches(itemNo));
final allItemBatchesProvider = FutureProvider<List<ItemBatche>>((ref) =>
    ref.read(dbProvider).getAllItemBatches());

// ─── Print Details ────────────────────────────────────────────────────────────

final printDetailsProvider = FutureProvider<List<PrintDetail>>((ref) =>
    ref.read(dbProvider).getAllPrintDetails());

// ─── Orders ───────────────────────────────────────────────────────────────────

final ordersProvider = FutureProvider<List<Order>>((ref) =>
    ref.read(dbProvider).getAllOrders());

// ─── Dashboard Stats ──────────────────────────────────────────────────────────

final todaySalesProvider = FutureProvider<double>((ref) =>
    ref.read(dbProvider).getTodaySales());
final todayOrderCountProvider = FutureProvider<int>((ref) =>
    ref.read(dbProvider).getTodayOrderCount());

// ─── Cart ─────────────────────────────────────────────────────────────────────

class CartItem {
  final ItemHeader product;
  int qty;
  double discount;

  CartItem({required this.product, this.qty = 1, this.discount = 0});

  double get total => (product.mrp - discount) * qty;
}

class CartNotifier extends StateNotifier<List<CartItem>> {
  CartNotifier() : super([]);

  void addProduct(ItemHeader p) {
    final idx = state.indexWhere((i) => i.product.itemNo == p.itemNo);
    if (idx >= 0) {
      state = [
        for (int i = 0; i < state.length; i++)
          if (i == idx)
            CartItem(product: state[i].product, qty: state[i].qty + 1, discount: state[i].discount)
          else
            state[i]
      ];
    } else {
      state = [...state, CartItem(product: p)];
    }
  }

  void updateQty(String itemNo, int qty) {
    if (qty <= 0) { removeItem(itemNo); return; }
    state = [
      for (final item in state)
        if (item.product.itemNo == itemNo)
          CartItem(product: item.product, qty: qty, discount: item.discount)
        else
          item
    ];
  }

  void removeItem(String itemNo) =>
      state = state.where((i) => i.product.itemNo != itemNo).toList();

  void clear() => state = [];

  double get subtotal => state.fold(0, (s, i) => s + i.total);
}

final cartProvider = StateNotifierProvider<CartNotifier, List<CartItem>>(
    (ref) => CartNotifier());
