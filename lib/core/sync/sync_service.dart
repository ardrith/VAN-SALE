import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../database/app_database.dart';
import '../network/api_client.dart';
import '../../features/auth/services/master_import_service.dart';

class SyncService {
  final AppDatabase db;
  final ApiClient api;
  final _storage = const FlutterSecureStorage();
  late final MasterImportService _importService;

  SyncService(this.db, this.api) {
    _importService = MasterImportService(db);
  }

  Future<void> pullMasterData(String apiKey, {bool incremental = false}) async {
    try {
      final updatedTime = incremental
          ? await _storage.read(key: 'last_sync_time') ?? '2000-10-04'
          : '2000-10-04';

      print('Fetching master data from server...');
      final master =
          await api.fetchMasterData(apiKey, updatedTime: updatedTime);

      if (master.data == null) {
        print('Master import: no data received');
        return;
      }

      print('Importing master data to database...');
      await _importService.importMasterData(
        master.data!,
        fullRefresh: !incremental,
      );

      final summary = _importService.getImportSummary(master.data!);
      print('Master import complete:');
      print('  Customers: ${summary['customers']}');
      print('  Vendors: ${summary['vendors']}');
      print('  Items: ${summary['items']}');
      print('  Item Prices: ${summary['itemPrices']}');
      print('  Item UOMs: ${summary['itemUoms']}');
      print('  Item Batches: ${summary['itemBatches']}');
      print('  Accounts: ${summary['accounts']}');
      print('  Employees: ${summary['employees']}');
      print('  Users: ${summary['users']}');
      print('  Stores: ${summary['stores']}');
      print('  Payment Terms: ${summary['paymentTerms']}');
      print('  Price Lists: ${summary['priceLists']}');
      print('  Sales Persons: ${summary['salesPersons']}');

      if (master.data!.lastUpdatedTime != null &&
          master.data!.lastUpdatedTime!.isNotEmpty) {
        await _storage.write(
          key: 'last_sync_time',
          value: master.data!.lastUpdatedTime!,
        );
        print('Last sync time saved: ${master.data!.lastUpdatedTime}');
      }
    } catch (e, st) {
      print('pullMasterData error: $e\n$st');
      rethrow;
    }
  }

  Future<void> pushPendingOrders() async {
    final pending = await db.getPendingSyncItems();
    for (final item in pending) {
      try {
        final payload = jsonDecode(item.payload) as Map<String, dynamic>;
        await api.pushOrder(payload);
        await db.markSynced(item.id);
      } catch (_) {
        await db.markFailed(item.id);
      }
    }
  }
}
