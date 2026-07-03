import 'dart:convert';

import 'package:drift/drift.dart';
import '../../../core/database/app_database.dart';

// Helper functions
Map<String, dynamic> _map(dynamic raw) {
  if (raw == null) return {};
  if (raw is String) {
    try {
      final decoded = jsonDecode(raw);
      return _map(decoded);
    } catch (_) {
      return {};
    }
  }
  if (raw is Map) {
    return raw.map((key, value) => MapEntry(key.toString(), value));
  }
  if (raw is List && raw.isNotEmpty) {
    return _map(raw.first);
  }
  return {};
}

dynamic _value(Map<String, dynamic> map, String key) {
  if (map.containsKey(key)) return map[key];

  final wanted = _normalizeKey(key);
  for (final entry in map.entries) {
    if (_normalizeKey(entry.key) == wanted) return entry.value;
  }

  return null;
}

String _normalizeKey(String key) =>
    key.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

List<T> _list<T>(
  Map<String, dynamic> map,
  String key,
  T Function(Map<String, dynamic>) f,
) {
  final raw = _value(map, key);
  if (raw == null) return [];
  final list = raw is String ? _decodeList(raw) : raw;
  if (list is! List) return [];

  return list.map(_map).where((e) => e.isNotEmpty).map(f).toList();
}

dynamic _decodeList(String raw) {
  try {
    return jsonDecode(raw);
  } catch (_) {
    return null;
  }
}

num? _num(dynamic v) {
  if (v == null) return null;
  if (v is num) return v;
  if (v is String) return num.tryParse(v.trim());
  return num.tryParse(v.toString());
}

double _dbl(dynamic v, [double d = 0]) => (_num(v) ?? d).toDouble();
int _int(dynamic v, [int d = 0]) => (_num(v) ?? d).toInt();
int? _intN(dynamic v) => v == null ? null : _num(v)?.toInt();
double? _dblN(dynamic v) => v == null ? null : _num(v)?.toDouble();
String? _str(dynamic v) => v?.toString();
bool? _bool(dynamic v) {
  if (v == null) return null;
  if (v is bool) return v;
  final text = v.toString().toLowerCase().trim();
  if (text == 'true' || text == '1') return true;
  if (text == 'false' || text == '0') return false;
  return null;
}

// Main Import Model
class MasterImport {
  final bool? error;
  final String? message;
  final MasterData? data;

  const MasterImport({this.error, this.message, this.data});

  factory MasterImport.fromJson(Map<String, dynamic> j) => MasterImport(
        error: _bool(_value(j, 'error')),
        message: _str(_value(j, 'message')),
        data: _value(j, 'data') != null
            ? MasterData.fromJson(_value(j, 'data'))
            : null,
      );
}

// Master Data Container
class MasterData {
  final List<CustomersCompanion> customers;
  final List<ItemHeadersCompanion> itemHeaders;
  final List<ItemPricesCompanion> itemPrices;
  final List<AccountsCompanion> accounts;
  final List<VendorsCompanion> vendors;
  final List<EmployeeListsCompanion> employees;
  final List<GeneralSettingsCompanion> generalSettings;
  final List<SeriesForNextnumsCompanion> seriesForNextnums;
  final List<MasterUsersCompanion> masterUsers;
  final List<OrganisationDetailsCompanion> organisationDetails;
  final List<SeriesListsCompanion> seriesLists;
  final List<StoresCompanion> stores;
  final List<FrieghtsCompanion> frieghts;
  final List<PaymentTermsCompanion> paymentTerms;
  final List<ModeOfDispatchesCompanion> modeOfDispatches;
  final List<PriceListsCompanion> priceLists;
  final List<SalesPersonsCompanion> salesPersons;
  final List<ItemUomsCompanion> itemUoms;
  final List<ItemBatchesCompanion> itemBatches;
  final List<PrintDetailsCompanion> printDetails;
  final String? lastUpdatedTime;

  const MasterData({
    this.customers = const [],
    this.itemHeaders = const [],
    this.itemPrices = const [],
    this.accounts = const [],
    this.vendors = const [],
    this.employees = const [],
    this.generalSettings = const [],
    this.seriesForNextnums = const [],
    this.masterUsers = const [],
    this.organisationDetails = const [],
    this.seriesLists = const [],
    this.stores = const [],
    this.frieghts = const [],
    this.paymentTerms = const [],
    this.modeOfDispatches = const [],
    this.priceLists = const [],
    this.salesPersons = const [],
    this.itemUoms = const [],
    this.itemBatches = const [],
    this.printDetails = const [],
    this.lastUpdatedTime,
  });

  factory MasterData.fromJson(dynamic rawJson) {
    final j = _map(rawJson);
    final data = _map(_value(j, 'data'));
    final source = data.isNotEmpty ? data : j;
    final updatedList = _value(source, 'updatedDateAndTime') is List
        ? _value(source, 'updatedDateAndTime') as List
        : const [];
    final lastTime = updatedList.isNotEmpty
        ? _str(_value(_map(updatedList.last), 'updatedDate'))
        : null;

    return MasterData(
      lastUpdatedTime: lastTime,
      customers: _list(source, 'customer', _parseCustomer)
          .where((c) => c.cvCode.value.isNotEmpty)
          .toList(),
      itemHeaders: _list(source, 'itemHeader', _parseItemHeader)
          .where((p) => p.itemNo.value.isNotEmpty)
          .toList(),
      itemPrices: _list(source, 'itemPrice', _parseItemPrice),
      accounts: _list(source, 'accounts', _parseAccount)
          .where((a) => a.code.value != 0)
          .toList(),
      vendors: _list(source, 'vendor', _parseVendor)
          .where((v) => v.cvCode.value.isNotEmpty)
          .toList(),
      employees: _list(source, 'employeeList', _parseEmployee)
          .where((e) => e.empId.value != 0)
          .toList(),
      generalSettings: _list(source, 'generalSettings', _parseGeneralSettings),
      seriesForNextnums:
          _list(source, 'seriesForNextnumOfUsers', _parseSeriesForNextnums),
      masterUsers: _list(source, 'user', _parseMasterUser)
          .where((u) => u.userId.value != 0)
          .toList(),
      organisationDetails:
          _list(source, 'organisationDetails', _parseOrganisationDetails),
      seriesLists: _list(source, 'seriesList', _parseSeriesList)
          .where((s) => s.seriesId.value != 0)
          .toList(),
      stores: _list(source, 'store', _parseStore)
          .where((s) => s.strId.value != 0)
          .toList(),
      frieghts: _list(source, 'frieght', _parseFrieght)
          .where((f) => f.accountCode.value != 0)
          .toList(),
      paymentTerms: _list(source, 'paymentTerms', _parsePaymentTerms)
          .where((p) => p.paymentId.value != 0)
          .toList(),
      modeOfDispatches: _list(source, 'modeOfDispatch', _parseModeOfDispatches)
          .where((m) => m.id.value != 0)
          .toList(),
      priceLists: _list(source, 'priceLists', _parsePriceLists)
          .where((p) => p.priceList.value != 0)
          .toList(),
      salesPersons: _list(source, 'salesPersons', _parseSalesPersons)
          .where((s) => s.salesPerson.value != 0)
          .toList(),
      itemUoms: _list(source, 'itemUom', _parseItemUoms),
      itemBatches: _list(source, 'itemBatch', _parseItemBatches),
      printDetails: _list(source, 'printDetails', _parsePrintDetails),
    );
  }
}

// Parser Functions
CustomersCompanion _parseCustomer(Map<String, dynamic> c) => CustomersCompanion(
      cvCode: Value(_str(_value(c, 'cvCode')) ?? ''),
      orgId: Value(_intN(_value(c, 'orgId'))),
      cvName: Value(_str(_value(c, 'cvName')) ?? ''),
      type: Value(_str(_value(c, 'type'))),
      tel1: Value(_str(_value(c, 'tel1'))),
      mobileNo: Value(_str(_value(c, 'mobileNo'))),
      email: Value(_str(_value(c, 'email'))),
      address: Value(_str(_value(c, 'address'))),
      area: Value(_str(_value(c, 'area'))),
      place: Value(_str(_value(c, 'place'))),
      district: Value(_str(_value(c, 'district'))),
      pinCode: Value(_intN(_value(c, 'pinCode'))),
      balance: Value(_dbl(_value(c, 'balance'))),
      creditLimit: Value(_int(_value(c, 'creditLimit'))),
      priceList: Value(_intN(_value(c, 'priceList'))),
      paymentTerms: Value(_intN(_value(c, 'paymentTerms'))),
      gstNo: Value(_str(_value(c, 'gstNo'))),
      panNo: Value(_str(_value(c, 'panNo'))),
      inactive: Value(_str(_value(c, 'inactive'))),
      updatedDate: Value(_str(_value(c, 'updatedDate'))),
      paymentTermsName: Value(_str(_value(c, 'paymentTermsName'))),
    );

ItemHeadersCompanion _parseItemHeader(Map<String, dynamic> p) =>
    ItemHeadersCompanion(
      itemNo: Value(_str(_value(p, 'itemNo')) ?? ''),
      orgId: Value(_intN(_value(p, 'orgId'))),
      itemName: Value(_str(_value(p, 'itemName')) ?? ''),
      description: Value(_str(_value(p, 'description'))),
      barcode: Value(_str(_value(p, 'barcode'))),
      hsnCode: Value(_str(_value(p, 'hsnCode'))),
      taxcode: Value(_str(_value(p, 'taxcode'))),
      uom: Value(_str(_value(p, 'uom'))),
      onHand: Value(_dbl(_value(p, 'onHand'))),
      cost: Value(_dbl(_value(p, 'cost'))),
      mrp: Value(_dbl(_value(p, 'mrp'))),
      image: Value(_str(_value(p, 'image'))),
      inactive: Value(_str(_value(p, 'inactive'))),
      updatedDate: Value(_str(_value(p, 'updatedDate'))),
      isInclusive: Value(_str(_value(p, 'isInclusive'))),
      type: Value(_str(_value(p, 'type'))),
      taxRate: Value(_intN(_value(p, 'taxRate'))),
      cessPerc: Value(_dblN(_value(p, 'cessPerc'))),
    );

ItemPricesCompanion _parseItemPrice(Map<String, dynamic> p) =>
    ItemPricesCompanion(
      orgId: Value(_intN(_value(p, 'orgId'))),
      itemNo: Value(_str(_value(p, 'itemNo')) ?? ''),
      priceListId: Value(_intN(_value(p, 'priceListId'))),
      price: Value(_dbl(_value(p, 'price'))),
      discount: Value(_dbl(_value(p, 'discount'))),
      isInclusive: Value(_str(_value(p, 'isInclusive'))),
      updatedDate: Value(_str(_value(p, 'updatedDate'))),
    );

AccountsCompanion _parseAccount(Map<String, dynamic> a) => AccountsCompanion(
      code: Value(_int(_value(a, 'code'))),
      orgId: Value(_intN(_value(a, 'orgId'))),
      name: Value(_str(_value(a, 'name')) ?? ''),
      drawer: Value(_str(_value(a, 'drawer'))),
      parent: Value(_intN(_value(a, 'parent'))),
      balance: Value(_dbl(_value(a, 'balance'))),
      cashAccount: Value(_str(_value(a, 'cashAccount'))),
      inactive: Value(_str(_value(a, 'inactive'))),
      updatedDate: Value(_str(_value(a, 'updatedDate'))),
    );

VendorsCompanion _parseVendor(Map<String, dynamic> v) => VendorsCompanion(
      cvCode: Value(_str(_value(v, 'cvCode')) ?? ''),
      orgId: Value(_intN(_value(v, 'orgId'))),
      cvName: Value(_str(_value(v, 'cvName')) ?? ''),
      type: Value(_str(_value(v, 'type'))),
      tel1: Value(_str(_value(v, 'tel1'))),
      mobileNo: Value(_str(_value(v, 'mobileNo'))),
      email: Value(_str(_value(v, 'email'))),
      address: Value(_str(_value(v, 'address'))),
      area: Value(_str(_value(v, 'area'))),
      balance: Value(_dbl(_value(v, 'balance'))),
      creditLimit: Value(_int(_value(v, 'creditLimit'))),
      priceList: Value(_intN(_value(v, 'priceList'))),
      gstNo: Value(_str(_value(v, 'gstNo'))),
      inactive: Value(_str(_value(v, 'inactive'))),
      updatedDate: Value(_str(_value(v, 'updatedDate'))),
    );

EmployeeListsCompanion _parseEmployee(Map<String, dynamic> e) =>
    EmployeeListsCompanion(
      empId: Value(_int(_value(e, 'empId'))),
      orgId: Value(_intN(_value(e, 'orgId'))),
      empCode: Value(_str(_value(e, 'empCode'))),
      empName: Value(_str(_value(e, 'empName'))),
      inactive: Value(_str(_value(e, 'inactive'))),
      updatedDate: Value(_str(_value(e, 'updatedDate'))),
    );

GeneralSettingsCompanion _parseGeneralSettings(Map<String, dynamic> g) =>
    GeneralSettingsCompanion(
      orgId: Value(_int(_value(g, 'orgId'))),
      dfltStore: Value(_str(_value(g, 'dfltStore'))),
      localCurrency: Value(_str(_value(g, 'localCurrency'))),
      dfltPriceListCustomer: Value(_intN(_value(g, 'dfltPriceListCustomer'))),
      allowNegativeInventory: Value(_str(_value(g, 'allowNegativeInventory'))),
      batch: Value(_str(_value(g, 'batch'))),
      isRoundOff: Value(_str(_value(g, 'isRoundOff'))),
      allowPriceChange: Value(_str(_value(g, 'allowPriceChange'))),
      allowDiscountChange: Value(_str(_value(g, 'allowDiscountChange'))),
      allowCustomerCreationOffline:
          Value(_str(_value(g, 'allowCustomerCreationOffline'))),
    );

SeriesForNextnumsCompanion _parseSeriesForNextnums(Map<String, dynamic> s) =>
    SeriesForNextnumsCompanion(
      orgId: Value(_intN(_value(s, 'orgId'))),
      seriesId: Value(_intN(_value(s, 'seriesId'))),
      userId: Value(_intN(_value(s, 'userId'))),
      formId: Value(_intN(_value(s, 'formId'))),
      fromNum: Value(_intN(_value(s, 'fromNum'))),
      nextNum: Value(_intN(_value(s, 'nextNum'))),
      maxNum: Value(_intN(_value(s, 'maxNum'))),
    );

MasterUsersCompanion _parseMasterUser(Map<String, dynamic> u) =>
    MasterUsersCompanion(
      userId: Value(_int(_value(u, 'userId'))),
      orgId: Value(_intN(_value(u, 'orgId'))),
      userCode: Value(_str(_value(u, 'userCode'))),
      userName: Value(_str(_value(u, 'userName'))),
      mobile: Value(_str(_value(u, 'mobile'))),
      email: Value(_str(_value(u, 'email'))),
      storeId: Value(_intN(_value(u, 'storeId'))),
      priceList: Value(_intN(_value(u, 'priceList'))),
      inactive: Value(_str(_value(u, 'inactive'))),
      imageUrl: Value(_str(_value(u, 'imageUrl'))),
      updatedDate: Value(_str(_value(u, 'updatedDate'))),
    );

OrganisationDetailsCompanion _parseOrganisationDetails(
        Map<String, dynamic> o) =>
    OrganisationDetailsCompanion(
      orgId: Value(_int(_value(o, 'orgId'))),
      organisation: Value(_str(_value(o, 'organisation'))),
      address: Value(_str(_value(o, 'address'))),
      mobile: Value(_str(_value(o, 'mobile'))),
      eMail: Value(_str(_value(o, 'eMail'))),
      gstNo: Value(_str(_value(o, 'gstNo'))),
      panNo: Value(_str(_value(o, 'panNo'))),
      imageUrl: Value(_str(_value(o, 'imageUrl'))),
      state: Value(_str(_value(o, 'state'))),
      country: Value(_str(_value(o, 'country'))),
      zipCode: Value(_str(_value(o, 'zipCode'))),
    );

SeriesListsCompanion _parseSeriesList(Map<String, dynamic> s) =>
    SeriesListsCompanion(
      seriesId: Value(_int(_value(s, 'seriesId'))),
      orgId: Value(_intN(_value(s, 'orgId'))),
      seriesName: Value(_str(_value(s, 'seriesName'))),
      printHeader: Value(_str(_value(s, 'printHeader'))),
      mobileNo: Value(_str(_value(s, 'mobileNo'))),
      address: Value(_str(_value(s, 'address'))),
      gstNo: Value(_str(_value(s, 'gstNo'))),
    );

StoresCompanion _parseStore(Map<String, dynamic> s) => StoresCompanion(
      strId: Value(_int(_value(s, 'strId'))),
      orgId: Value(_intN(_value(s, 'orgId'))),
      strName: Value(_str(_value(s, 'strName'))),
      inactive: Value(_str(_value(s, 'inactive'))),
    );

FrieghtsCompanion _parseFrieght(Map<String, dynamic> f) => FrieghtsCompanion(
      accountCode: Value(_int(_value(f, 'accountCode'))),
      orgId: Value(_intN(_value(f, 'orgId'))),
      accountName: Value(_str(_value(f, 'accountName'))),
    );

PaymentTermsCompanion _parsePaymentTerms(Map<String, dynamic> p) =>
    PaymentTermsCompanion(
      paymentId: Value(_int(_value(p, 'paymentId'))),
      orgId: Value(_intN(_value(p, 'orgId'))),
      paymentCode: Value(_str(_value(p, 'paymentCode'))),
      days: Value(_intN(_value(p, 'days'))),
      maximumCredit: Value(_intN(_value(p, 'maximumCredit'))),
      discountPercent: Value(_intN(_value(p, 'discountPercent'))),
      priceList: Value(_intN(_value(p, 'priceList'))),
    );

ModeOfDispatchesCompanion _parseModeOfDispatches(Map<String, dynamic> m) =>
    ModeOfDispatchesCompanion(
      id: Value(_int(_value(m, 'id'))),
      name: Value(_str(_value(m, 'name'))),
    );

PriceListsCompanion _parsePriceLists(Map<String, dynamic> p) =>
    PriceListsCompanion(
      priceList: Value(_int(_value(p, 'priceList'))),
      priceListName: Value(_str(_value(p, 'priceListName'))),
    );

SalesPersonsCompanion _parseSalesPersons(Map<String, dynamic> s) =>
    SalesPersonsCompanion(
      salesPerson: Value(_int(_value(s, 'salesPerson'))),
      salesPersonName: Value(_str(_value(s, 'salesPersonName'))),
    );

ItemUomsCompanion _parseItemUoms(Map<String, dynamic> u) => ItemUomsCompanion(
      itemNo: Value(_str(_value(u, 'itemNo')) ?? ''),
      uom: Value(_str(_value(u, 'uom'))),
      price: Value(_dbl(_value(u, 'price'))),
      discount: Value(_int(_value(u, 'discount'))),
      quantity: Value(_dbl(_value(u, 'quantity'), 1)),
    );

ItemBatchesCompanion _parseItemBatches(Map<String, dynamic> b) =>
    ItemBatchesCompanion(
      itemNo: Value(_str(_value(b, 'itemNo')) ?? ''),
      batchCode: Value(_str(_value(b, 'batchCode'))),
      stock: Value(_dbl(_value(b, 'stock'))),
      expDate: Value(_str(_value(b, 'expDate'))),
      barcode: Value(_str(_value(b, 'barcode'))),
    );

PrintDetailsCompanion _parsePrintDetails(Map<String, dynamic> p) =>
    PrintDetailsCompanion(
      printHeader: Value(_str(_value(p, 'printHeader'))),
      address: Value(_str(_value(p, 'address'))),
      gstNo: Value(_str(_value(p, 'gstNo'))),
      stateName: Value(_str(_value(p, 'stateName'))),
      stateCode: Value(_str(_value(p, 'stateCode'))),
      email: Value(_str(_value(p, 'email'))),
      mobileNo: Value(_str(_value(p, 'mobileNo'))),
      printerSize: Value(_str(_value(p, 'printerSize'))),
    );
