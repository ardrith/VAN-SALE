import '../../../core/database/app_database.dart';
import '../models/master_import_model.dart';

class MasterImportService {
  final AppDatabase _db;

  MasterImportService(this._db);

  /// Import all master data into the database
  Future<void> importMasterData(
    MasterData data, {
    bool fullRefresh = true,
  }) async {
    await _db.transaction(() async {
      if (fullRefresh) {
        await _db.clearMasterDetailTables();
      }

      await _importAccounts(data.accounts);
      await _importCustomers(data.customers);
      await _importVendors(data.vendors);
      await _importItemHeaders(data.itemHeaders);
      await _importItemPrices(data.itemPrices);
      await _importItemUoms(data.itemUoms);
      await _importItemBatches(data.itemBatches);
      await _importEmployees(data.employees);
      await _importGeneralSettings(data.generalSettings);
      await _importSeriesForNextnums(data.seriesForNextnums);
      await _importMasterUsers(data.masterUsers);
      await _importOrganisationDetails(data.organisationDetails);
      await _importSeriesLists(data.seriesLists);
      await _importStores(data.stores);
      await _importFrieghts(data.frieghts);
      await _importPaymentTerms(data.paymentTerms);
      await _importModeOfDispatches(data.modeOfDispatches);
      await _importPriceLists(data.priceLists);
      await _importSalesPersons(data.salesPersons);
      await _importPrintDetails(data.printDetails);
    });
  }

  Future<void> _importAccounts(List<AccountsCompanion> accounts) async {
    if (accounts.isEmpty) return;
    await _db.upsertAccounts(accounts);
  }

  Future<void> _importCustomers(List<CustomersCompanion> customers) async {
    if (customers.isEmpty) return;
    await _db.upsertCustomers(customers);
  }

  Future<void> _importVendors(List<VendorsCompanion> vendors) async {
    if (vendors.isEmpty) return;
    await _db.upsertVendors(vendors);
  }

  Future<void> _importItemHeaders(List<ItemHeadersCompanion> items) async {
    if (items.isEmpty) return;
    await _db.upsertItems(items);
  }

  Future<void> _importItemPrices(List<ItemPricesCompanion> prices) async {
    if (prices.isEmpty) return;
    await _db.upsertItemPrices(prices);
  }

  Future<void> _importItemUoms(List<ItemUomsCompanion> uoms) async {
    if (uoms.isEmpty) return;
    await _db.upsertItemUoms(uoms);
  }

  Future<void> _importItemBatches(List<ItemBatchesCompanion> batches) async {
    if (batches.isEmpty) return;
    await _db.upsertItemBatches(batches);
  }

  Future<void> _importEmployees(List<EmployeeListsCompanion> employees) async {
    if (employees.isEmpty) return;
    await _db.upsertEmployees(employees);
  }

  Future<void> _importGeneralSettings(
      List<GeneralSettingsCompanion> settings) async {
    if (settings.isEmpty) return;
    await _db.upsertGeneralSettings(settings);
  }

  Future<void> _importSeriesForNextnums(
      List<SeriesForNextnumsCompanion> series) async {
    if (series.isEmpty) return;
    await _db.upsertSeriesForNextnums(series);
  }

  Future<void> _importMasterUsers(List<MasterUsersCompanion> users) async {
    if (users.isEmpty) return;
    await _db.upsertMasterUsers(users);
  }

  Future<void> _importOrganisationDetails(
      List<OrganisationDetailsCompanion> details) async {
    if (details.isEmpty) return;
    await _db.upsertOrganisationDetails(details);
  }

  Future<void> _importSeriesLists(List<SeriesListsCompanion> series) async {
    if (series.isEmpty) return;
    await _db.upsertSeriesLists(series);
  }

  Future<void> _importStores(List<StoresCompanion> stores) async {
    if (stores.isEmpty) return;
    await _db.upsertStores(stores);
  }

  Future<void> _importFrieghts(List<FrieghtsCompanion> frieghts) async {
    if (frieghts.isEmpty) return;
    await _db.upsertFrieghts(frieghts);
  }

  Future<void> _importPaymentTerms(
      List<PaymentTermsCompanion> paymentTerms) async {
    if (paymentTerms.isEmpty) return;
    await _db.upsertPaymentTerms(paymentTerms);
  }

  Future<void> _importModeOfDispatches(
      List<ModeOfDispatchesCompanion> modes) async {
    if (modes.isEmpty) return;
    await _db.upsertModeOfDispatches(modes);
  }

  Future<void> _importPriceLists(List<PriceListsCompanion> priceLists) async {
    if (priceLists.isEmpty) return;
    await _db.upsertPriceLists(priceLists);
  }

  Future<void> _importSalesPersons(
      List<SalesPersonsCompanion> salesPersons) async {
    if (salesPersons.isEmpty) return;
    await _db.upsertSalesPersons(salesPersons);
  }

  Future<void> _importPrintDetails(
      List<PrintDetailsCompanion> printDetails) async {
    if (printDetails.isEmpty) return;
    await _db.upsertPrintDetails(printDetails);
  }

  Map<String, int> getImportSummary(MasterData data) {
    return {
      'customers': data.customers.length,
      'vendors': data.vendors.length,
      'items': data.itemHeaders.length,
      'itemPrices': data.itemPrices.length,
      'itemUoms': data.itemUoms.length,
      'itemBatches': data.itemBatches.length,
      'accounts': data.accounts.length,
      'employees': data.employees.length,
      'users': data.masterUsers.length,
      'stores': data.stores.length,
      'paymentTerms': data.paymentTerms.length,
      'priceLists': data.priceLists.length,
      'salesPersons': data.salesPersons.length,
    };
  }
}
