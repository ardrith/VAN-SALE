import 'package:flutter_test/flutter_test.dart';
import 'package:van_sale/features/auth/models/master_import_model.dart';

void main() {
  test('parses master import response with server key casing', () {
    final import = MasterImport.fromJson({
      'data': {
        'ItemHeader': [
          {
            'Org_Id': 468,
            'Item_No': '13791',
            'Item_Name': 'pr',
            'TaxRate': 12.0,
            'MRP': 100.0,
            'OnHand': 5.0,
            'UOM': 'NOS',
            'UpdatedDate': '2026-05-30 16:26:13',
          },
        ],
        'Customer': [
          {
            'Org_Id': 468,
            'CVCode': 'C001',
            'CVName': 'Cash Customer',
            'MobileNo': '9999999999',
            'PriceList': 1,
          },
        ],
        'Store': [
          {
            'Org_Id': 468,
            'Str_Id': 1,
            'Str_Name': 'Main Store',
            'Inactive': 'N',
          },
        ],
        'User': [
          {
            'Org_Id': 468,
            'UserId': 10,
            'UserCode': 'USR',
            'UserName': 'Sales User',
            'StoreId': 1,
            'PriceList': 1,
          },
        ],
      },
      'error': false,
      'message': 'ok',
    });

    final data = import.data;

    expect(data, isNotNull);
    expect(data!.itemHeaders.single.itemNo.value, '13791');
    expect(data.itemHeaders.single.orgId.value, 468);
    expect(data.itemHeaders.single.itemName.value, 'pr');
    expect(data.itemHeaders.single.taxRate.value, 12);
    expect(data.customers.single.cvCode.value, 'C001');
    expect(data.customers.single.mobileNo.value, '9999999999');
    expect(data.stores.single.strId.value, 1);
    expect(data.masterUsers.single.userId.value, 10);
  });
}
