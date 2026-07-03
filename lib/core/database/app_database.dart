import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

// ─── Master Tables ────────────────────────────────────────────────────────────

class Customers extends Table {
  TextColumn get cvCode => text()();
  IntColumn get orgId => integer().nullable()();
  TextColumn get cvName => text()();
  TextColumn get type => text().nullable()();
  TextColumn get tel1 => text().nullable()();
  TextColumn get mobileNo => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get address => text().nullable()();
  TextColumn get area => text().nullable()();
  TextColumn get place => text().nullable()();
  TextColumn get district => text().nullable()();
  IntColumn get pinCode => integer().nullable()();
  RealColumn get balance => real().withDefault(const Constant(0))();
  IntColumn get creditLimit => integer().withDefault(const Constant(0))();
  IntColumn get priceList => integer().nullable()();
  IntColumn get paymentTerms => integer().nullable()();
  TextColumn get gstNo => text().nullable()();
  TextColumn get panNo => text().nullable()();
  TextColumn get inactive => text().nullable()();
  TextColumn get updatedDate => text().nullable()();
  TextColumn get paymentTermsName => text().nullable()();

  @override
  Set<Column> get primaryKey => {cvCode};
}

class ItemHeaders extends Table {
  TextColumn get itemNo => text()();
  IntColumn get orgId => integer().nullable()();
  TextColumn get itemName => text()();
  TextColumn get description => text().nullable()();
  TextColumn get barcode => text().nullable()();
  TextColumn get hsnCode => text().nullable()();
  TextColumn get taxcode => text().nullable()();
  TextColumn get uom => text().nullable()();
  RealColumn get onHand => real().withDefault(const Constant(0))();
  RealColumn get cost => real().withDefault(const Constant(0))();
  RealColumn get mrp => real().withDefault(const Constant(0))();
  TextColumn get image => text().nullable()();
  TextColumn get inactive => text().nullable()();
  TextColumn get updatedDate => text().nullable()();
  TextColumn get isInclusive => text().nullable()();
  TextColumn get type => text().nullable()();
  IntColumn get taxRate => integer().nullable()();
  RealColumn get cessPerc => real().nullable()();

  @override
  Set<Column> get primaryKey => {itemNo};
}

class ItemPrices extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get orgId => integer().nullable()();
  TextColumn get itemNo => text()();
  IntColumn get priceListId => integer().nullable()();
  RealColumn get price => real().withDefault(const Constant(0))();
  RealColumn get discount => real().withDefault(const Constant(0))();
  TextColumn get isInclusive => text().nullable()();
  TextColumn get updatedDate => text().nullable()();
}

class Accounts extends Table {
  IntColumn get code => integer()();
  IntColumn get orgId => integer().nullable()();
  TextColumn get name => text()();
  TextColumn get drawer => text().nullable()();
  IntColumn get parent => integer().nullable()();
  RealColumn get balance => real().withDefault(const Constant(0))();
  TextColumn get cashAccount => text().nullable()();
  TextColumn get inactive => text().nullable()();
  TextColumn get updatedDate => text().nullable()();

  @override
  Set<Column> get primaryKey => {code};
}

class Vendors extends Table {
  TextColumn get cvCode => text()();
  IntColumn get orgId => integer().nullable()();
  TextColumn get cvName => text()();
  TextColumn get type => text().nullable()();
  TextColumn get tel1 => text().nullable()();
  TextColumn get mobileNo => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get address => text().nullable()();
  TextColumn get area => text().nullable()();
  RealColumn get balance => real().withDefault(const Constant(0))();
  IntColumn get creditLimit => integer().withDefault(const Constant(0))();
  IntColumn get priceList => integer().nullable()();
  TextColumn get gstNo => text().nullable()();
  TextColumn get inactive => text().nullable()();
  TextColumn get updatedDate => text().nullable()();

  @override
  Set<Column> get primaryKey => {cvCode};
}

class EmployeeLists extends Table {
  IntColumn get empId => integer()();
  IntColumn get orgId => integer().nullable()();
  TextColumn get empCode => text().nullable()();
  TextColumn get empName => text().nullable()();
  TextColumn get inactive => text().nullable()();
  TextColumn get updatedDate => text().nullable()();

  @override
  Set<Column> get primaryKey => {empId};
}

class GeneralSettings extends Table {
  IntColumn get orgId => integer()();
  TextColumn get dfltStore => text().nullable()();
  TextColumn get localCurrency => text().nullable()();
  IntColumn get dfltPriceListCustomer => integer().nullable()();
  TextColumn get allowNegativeInventory => text().nullable()();
  TextColumn get batch => text().nullable()();
  TextColumn get isRoundOff => text().nullable()();
  TextColumn get allowPriceChange => text().nullable()();
  TextColumn get allowDiscountChange => text().nullable()();
  TextColumn get allowCustomerCreationOffline => text().nullable()();

  @override
  Set<Column> get primaryKey => {orgId};
}

class SeriesForNextnums extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get orgId => integer().nullable()();
  IntColumn get seriesId => integer().nullable()();
  IntColumn get userId => integer().nullable()();
  IntColumn get formId => integer().nullable()();
  IntColumn get fromNum => integer().nullable()();
  IntColumn get nextNum => integer().nullable()();
  IntColumn get maxNum => integer().nullable()();
}

class MasterUsers extends Table {
  IntColumn get userId => integer()();
  IntColumn get orgId => integer().nullable()();
  TextColumn get userCode => text().nullable()();
  TextColumn get userName => text().nullable()();
  TextColumn get mobile => text().nullable()();
  TextColumn get email => text().nullable()();
  IntColumn get storeId => integer().nullable()();
  IntColumn get priceList => integer().nullable()();
  TextColumn get inactive => text().nullable()();
  TextColumn get imageUrl => text().nullable()();
  TextColumn get updatedDate => text().nullable()();

  @override
  Set<Column> get primaryKey => {userId};
}

class OrganisationDetails extends Table {
  IntColumn get orgId => integer()();
  TextColumn get organisation => text().nullable()();
  TextColumn get address => text().nullable()();
  TextColumn get mobile => text().nullable()();
  TextColumn get eMail => text().nullable()();
  TextColumn get gstNo => text().nullable()();
  TextColumn get panNo => text().nullable()();
  TextColumn get imageUrl => text().nullable()();
  TextColumn get state => text().nullable()();
  TextColumn get country => text().nullable()();
  TextColumn get zipCode => text().nullable()();

  @override
  Set<Column> get primaryKey => {orgId};
}

class SeriesLists extends Table {
  IntColumn get seriesId => integer()();
  IntColumn get orgId => integer().nullable()();
  TextColumn get seriesName => text().nullable()();
  TextColumn get printHeader => text().nullable()();
  TextColumn get mobileNo => text().nullable()();
  TextColumn get address => text().nullable()();
  TextColumn get gstNo => text().nullable()();

  @override
  Set<Column> get primaryKey => {seriesId};
}

class Stores extends Table {
  IntColumn get strId => integer()();
  IntColumn get orgId => integer().nullable()();
  TextColumn get strName => text().nullable()();
  TextColumn get inactive => text().nullable()();

  @override
  Set<Column> get primaryKey => {strId};
}

class Frieghts extends Table {
  IntColumn get accountCode => integer()();
  IntColumn get orgId => integer().nullable()();
  TextColumn get accountName => text().nullable()();

  @override
  Set<Column> get primaryKey => {accountCode};
}

class PaymentTerms extends Table {
  IntColumn get paymentId => integer()();
  IntColumn get orgId => integer().nullable()();
  TextColumn get paymentCode => text().nullable()();
  IntColumn get days => integer().nullable()();
  IntColumn get maximumCredit => integer().nullable()();
  IntColumn get discountPercent => integer().nullable()();
  IntColumn get priceList => integer().nullable()();

  @override
  Set<Column> get primaryKey => {paymentId};
}

class ModeOfDispatches extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class PriceLists extends Table {
  IntColumn get priceList => integer()();
  TextColumn get priceListName => text().nullable()();

  @override
  Set<Column> get primaryKey => {priceList};
}

class SalesPersons extends Table {
  IntColumn get salesPerson => integer()();
  TextColumn get salesPersonName => text().nullable()();

  @override
  Set<Column> get primaryKey => {salesPerson};
}

class ItemUoms extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get itemNo => text()();
  TextColumn get uom => text().nullable()();
  RealColumn get price => real().withDefault(const Constant(0))();
  IntColumn get discount => integer().withDefault(const Constant(0))();
  RealColumn get quantity => real().withDefault(const Constant(1))();
}

class ItemBatches extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get itemNo => text()();
  TextColumn get batchCode => text().nullable()();
  RealColumn get stock => real().withDefault(const Constant(0))();
  TextColumn get expDate => text().nullable()();
  TextColumn get barcode => text().nullable()();
}

class PrintDetails extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get printHeader => text().nullable()();
  TextColumn get address => text().nullable()();
  TextColumn get gstNo => text().nullable()();
  TextColumn get stateName => text().nullable()();
  TextColumn get stateCode => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get mobileNo => text().nullable()();
  TextColumn get printerSize => text().nullable()();
}

// ─── Transaction Tables ───────────────────────────────────────────────────────

class Orders extends Table {
  TextColumn get id => text()();
  TextColumn get orderNo => text()();
  TextColumn get customerId => text()();
  TextColumn get customerName => text()();
  RealColumn get subtotal => real().withDefault(const Constant(0))();
  RealColumn get discount => real().withDefault(const Constant(0))();
  RealColumn get tax => real().withDefault(const Constant(0))();
  RealColumn get total => real().withDefault(const Constant(0))();
  TextColumn get status => text().withDefault(const Constant('draft'))();
  TextColumn get paymentMethod => text().withDefault(const Constant('cash'))();
  TextColumn get notes => text().nullable()();
  BoolColumn get isSynced => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

class OrderItems extends Table {
  TextColumn get id => text()();
  TextColumn get orderId => text()();
  TextColumn get productId => text()();
  TextColumn get productName => text()();
  RealColumn get price => real()();
  IntColumn get qty => integer()();
  RealColumn get discount => real().withDefault(const Constant(0))();
  RealColumn get total => real()();

  @override
  Set<Column> get primaryKey => {id};
}

class SyncQueue extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get entity => text()();
  TextColumn get entityId => text()();
  TextColumn get action => text()();
  TextColumn get payload => text()();
  IntColumn get retries => integer().withDefault(const Constant(0))();
  TextColumn get status => text().withDefault(const Constant('pending'))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

// ─── Database ─────────────────────────────────────────────────────────────────

@DriftDatabase(tables: [
  // Master
  Customers, ItemHeaders, ItemPrices, Accounts, Vendors, EmployeeLists,
  GeneralSettings, SeriesForNextnums, MasterUsers, OrganisationDetails,
  SeriesLists, Stores, Frieghts, PaymentTerms, ModeOfDispatches, PriceLists,
  SalesPersons, ItemUoms, ItemBatches, PrintDetails,
  // Transactions
  Orders, OrderItems, SyncQueue,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2;

  static QueryExecutor _openConnection() => driftDatabase(name: 'van_sale_db');

  // ── Customers ──
  Future<List<Customer>> getAllCustomers() => select(customers).get();
  Future<List<Customer>> searchCustomers(String q) => (select(customers)
        ..where((c) => c.cvName.contains(q) | c.cvCode.contains(q)))
      .get();
  Future<void> upsertCustomers(List<CustomersCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(customers, list));

  // ── Items ──
  Future<List<ItemHeader>> getAllItems() => select(itemHeaders).get();
  Future<List<ItemHeader>> searchItems(String q) => (select(itemHeaders)
        ..where((p) => p.itemName.contains(q) | p.itemNo.contains(q)))
      .get();
  Future<void> upsertItems(List<ItemHeadersCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(itemHeaders, list));

  // ── Item Prices ──
  Future<void> upsertItemPrices(List<ItemPricesCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(itemPrices, list));
  Future<List<ItemPrice>> getItemPrices(String itemNo) =>
      (select(itemPrices)..where((p) => p.itemNo.equals(itemNo))).get();

  // ── Item UOMs ──
  Future<void> upsertItemUoms(List<ItemUomsCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(itemUoms, list));
  Future<List<ItemUom>> getItemUoms(String itemNo) =>
      (select(itemUoms)..where((u) => u.itemNo.equals(itemNo))).get();

  // ── Item Batches ──
  Future<void> upsertItemBatches(List<ItemBatchesCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(itemBatches, list));
  Future<List<ItemBatche>> getItemBatches(String itemNo) =>
      (select(itemBatches)..where((b) => b.itemNo.equals(itemNo))).get();
  Future<List<ItemBatche>> getAllItemBatches() => select(itemBatches).get();

  // ── Accounts ──
  Future<void> upsertAccounts(List<AccountsCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(accounts, list));
  Future<List<Account>> getAllAccounts() => select(accounts).get();

  // ── Vendors ──
  Future<void> upsertVendors(List<VendorsCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(vendors, list));
  Future<List<Vendor>> getAllVendors() => select(vendors).get();

  // ── Employees ──
  Future<void> upsertEmployees(List<EmployeeListsCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(employeeLists, list));
  Future<List<EmployeeList>> getAllEmployees() => select(employeeLists).get();

  // ── General Settings ──
  Future<void> upsertGeneralSettings(List<GeneralSettingsCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(generalSettings, list));
  Future<GeneralSetting?> getGeneralSettings() =>
      (select(generalSettings)..limit(1)).getSingleOrNull();

  // ── Series For Nextnums ──
  Future<void> upsertSeriesForNextnums(List<SeriesForNextnumsCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(seriesForNextnums, list));
  Future<List<SeriesForNextnum>> getAllSeriesForNextnums() =>
      select(seriesForNextnums).get();
  Future<List<SeriesForNextnum>> getSeriesForUser(int userId) =>
      (select(seriesForNextnums)..where((s) => s.userId.equals(userId))).get();

  // ── Master Users ──
  Future<void> upsertMasterUsers(List<MasterUsersCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(masterUsers, list));
  Future<List<MasterUser>> getAllMasterUsers() => select(masterUsers).get();
  Future<MasterUser?> getMasterUser(int userId) =>
      (select(masterUsers)..where((u) => u.userId.equals(userId)))
          .getSingleOrNull();

  // ── Organisation Details ──
  Future<void> upsertOrganisationDetails(
          List<OrganisationDetailsCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(organisationDetails, list));
  Future<OrganisationDetail?> getOrganisationDetail() =>
      (select(organisationDetails)..limit(1)).getSingleOrNull();

  // ── Series Lists ──
  Future<void> upsertSeriesLists(List<SeriesListsCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(seriesLists, list));
  Future<List<SeriesList>> getAllSeriesLists() => select(seriesLists).get();

  // ── Stores ──
  Future<void> upsertStores(List<StoresCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(stores, list));
  Future<List<Store>> getAllStores() => select(stores).get();

  // ── Frieghts ──
  Future<void> upsertFrieghts(List<FrieghtsCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(frieghts, list));
  Future<List<Frieght>> getAllFrieghts() => select(frieghts).get();

  // ── Payment Terms ──
  Future<void> upsertPaymentTerms(List<PaymentTermsCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(paymentTerms, list));
  Future<List<PaymentTerm>> getAllPaymentTerms() => select(paymentTerms).get();

  // ── Mode Of Dispatches ──
  Future<void> upsertModeOfDispatches(List<ModeOfDispatchesCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(modeOfDispatches, list));
  Future<List<ModeOfDispatche>> getAllModeOfDispatches() =>
      select(modeOfDispatches).get();

  // ── Price Lists ──
  Future<void> upsertPriceLists(List<PriceListsCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(priceLists, list));
  Future<List<PriceList>> getAllPriceLists() => select(priceLists).get();

  // ── Sales Persons ──
  Future<void> upsertSalesPersons(List<SalesPersonsCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(salesPersons, list));
  Future<List<SalesPerson>> getAllSalesPersons() => select(salesPersons).get();

  // ── Print Details ──
  Future<void> upsertPrintDetails(List<PrintDetailsCompanion> list) =>
      batch((b) => b.insertAllOnConflictUpdate(printDetails, list));
  Future<List<PrintDetail>> getAllPrintDetails() => select(printDetails).get();

  Future<void> clearMasterDetailTables() async {
    await delete(itemPrices).go();
    await delete(itemUoms).go();
    await delete(itemBatches).go();
    await delete(seriesForNextnums).go();
    await delete(printDetails).go();
  }

  // ── Orders ──
  Future<List<Order>> getAllOrders() =>
      (select(orders)..orderBy([(o) => OrderingTerm.desc(o.createdAt)])).get();
  Future<void> upsertOrder(OrdersCompanion o) =>
      into(orders).insertOnConflictUpdate(o);
  Future<List<OrderItem>> getOrderItems(String orderId) =>
      (select(orderItems)..where((i) => i.orderId.equals(orderId))).get();
  Future<void> insertOrderItems(List<OrderItemsCompanion> items) =>
      batch((b) => b.insertAll(orderItems, items));

  // ── Sync Queue ──
  Future<List<SyncQueueData>> getPendingSyncItems() =>
      (select(syncQueue)..where((s) => s.status.equals('pending'))).get();
  Future<void> addToSyncQueue(SyncQueueCompanion item) =>
      into(syncQueue).insert(item);
  Future<void> markSynced(int id) =>
      (update(syncQueue)..where((s) => s.id.equals(id)))
          .write(const SyncQueueCompanion(status: Value('synced')));
  Future<void> markFailed(int id) =>
      (update(syncQueue)..where((s) => s.id.equals(id)))
          .write(const SyncQueueCompanion(status: Value('failed')));

  // ── Dashboard ──
  Future<double> getTodaySales() async {
    final dayStart = DateTime.now();
    final start = DateTime(dayStart.year, dayStart.month, dayStart.day);
    final result = await (select(orders)
          ..where((o) =>
              o.createdAt.isBiggerOrEqualValue(start) &
              o.status.equals('confirmed')))
        .get();
    return result.fold<double>(0.0, (s, o) => s + o.total);
  }

  Future<int> getTodayOrderCount() async {
    final dayStart = DateTime.now();
    final start = DateTime(dayStart.year, dayStart.month, dayStart.day);
    final result = await (select(orders)
          ..where((o) => o.createdAt.isBiggerOrEqualValue(start)))
        .get();
    return result.length;
  }
}
