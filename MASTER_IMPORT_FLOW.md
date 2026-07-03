# Master Import Login Flow

## Overview
Complete flow for login with full master data synchronization to local database.

## Architecture

```
LoginScreen
    ↓
AuthNotifier.login()
    ↓
ApiClient.login() → Get user credentials & API key
    ↓
SyncService.pullMasterData() → Fetch master data from server
    ↓
MasterImportService.importMasterData() → Import all data to database
    ↓
AppDatabase → Store in local SQLite database
```

## Components

### 1. **master_import_model.dart**
- `MasterImport` - Main response wrapper
- `MasterData` - Contains all parsed Drift Companion objects
- Parser functions for each entity type

### 2. **master_import_service.dart**
- `importMasterData()` - Imports all entities in correct order
- Individual import methods for each entity
- `getImportSummary()` - Returns import statistics

### 3. **sync_service.dart**
- `pullMasterData()` - Orchestrates the sync process
- Handles incremental sync with timestamps
- Logs detailed import statistics

### 4. **api_client.dart**
- `login()` - Authenticates user and gets API key
- `fetchMasterData()` - Fetches master data from server

### 5. **providers.dart**
- `authProvider` - Manages authentication state
- Triggers master data sync on successful login

## Login Flow

### Step 1: User Login
```dart
// User enters credentials in LoginScreen
await ref.read(authProvider.notifier).login(
  companyName,
  username,
  password,
  rememberMe,
);
```

### Step 2: Authentication
```dart
// AuthNotifier.login() in providers.dart
final user = await _api.login(companyName, username, password);
// Stores API key and user credentials
await _storage.write(key: 'syskey', value: user.syskey);
await _storage.write(key: 'user', value: jsonEncode(user.toJson()));
```

### Step 3: Master Data Sync
```dart
// Automatically triggered after successful login
await _sync.pullMasterData(user.apiKey ?? '');
```

### Step 4: Fetch from Server
```dart
// SyncService.pullMasterData()
final master = await api.fetchMasterData(apiKey, updatedTime: updatedTime);
```

### Step 5: Import to Database
```dart
// Uses MasterImportService
await _importService.importMasterData(master.data!);
```

### Step 6: Store in Database
```dart
// MasterImportService.importMasterData()
// Imports in dependency order:
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
```

## Data Entities Imported

1. **Customers** - Customer master data
2. **Vendors** - Vendor master data
3. **Items** - Product/item headers
4. **Item Prices** - Price list for items
5. **Item UOMs** - Unit of measure for items
6. **Item Batches** - Batch information for items
7. **Accounts** - Chart of accounts
8. **Employees** - Employee list
9. **General Settings** - Application settings
10. **Series For Nextnums** - Document numbering series
11. **Master Users** - User accounts
12. **Organisation Details** - Company information
13. **Series Lists** - Series configuration
14. **Stores** - Store/warehouse locations
15. **Frieghts** - Freight accounts
16. **Payment Terms** - Payment term configurations
17. **Mode Of Dispatches** - Dispatch methods
18. **Price Lists** - Price list master
19. **Sales Persons** - Sales person master
20. **Print Details** - Print configuration

## Incremental Sync

The system supports incremental sync to only fetch changed data:

```dart
// Full sync (first time login)
await _sync.pullMasterData(apiKey);

// Incremental sync (subsequent syncs)
await _sync.pullMasterData(apiKey, incremental: true);
```

Last sync timestamp is stored in secure storage:
```dart
await _storage.write(key: 'last_sync_time', value: lastUpdatedTime);
```

## Error Handling

All errors are caught and displayed to the user:

```dart
try {
  await _sync.pullMasterData(user.apiKey ?? '');
  state = state.copyWith(isLoading: false, isLoggedIn: true, user: user);
} catch (e) {
  state = state.copyWith(isLoading: false, error: e.toString());
}
```

## UI Feedback

LoginScreen shows sync progress:
```dart
if (auth.isLoading)
  Column(
    children: [
      const CircularProgressIndicator(),
      const SizedBox(height: 12),
      Text('Syncing master data...',
          style: TextStyle(color: Colors.grey.shade500, fontSize: 13)),
    ],
  )
```

## Console Logs

Detailed logs are printed during import:
```
Fetching master data from server...
Importing master data to database...
Master import complete:
  Customers: 150
  Vendors: 45
  Items: 500
  Item Prices: 1200
  Item UOMs: 300
  Item Batches: 800
  Accounts: 200
  Employees: 25
  Users: 10
  Stores: 5
  Payment Terms: 8
  Price Lists: 4
  Sales Persons: 12
Last sync time saved: 2024-01-15 10:30:45
```

## Database Schema Mapping

All API data is mapped to Drift Companion objects that match the database schema:

- API JSON → Parser Function → Companion Object → Database Table

Example:
```dart
// API JSON
{"cvCode": "C001", "cvName": "John Doe", "balance": 1500.50}
    ↓
// Parser Function
_parseCustomer(json)
    ↓
// Companion Object
CustomersCompanion(cvCode: Value("C001"), cvName: Value("John Doe"), balance: Value(1500.50))
    ↓
// Database
INSERT OR REPLACE INTO customers (cv_code, cv_name, balance) VALUES (?, ?, ?)
```

## Usage in App

After successful login, all data is available through providers:

```dart
// Get all customers
final customers = ref.watch(customersProvider);

// Search items
final items = ref.watch(itemSearchProvider('laptop'));

// Get item prices
final prices = ref.watch(itemPricesProvider('ITEM001'));

// Get general settings
final settings = ref.watch(generalSettingsProvider);

// Get organisation details
final org = ref.watch(organisationDetailProvider);
```

## Manual Sync

Users can manually trigger sync from the app:

```dart
// In AuthNotifier
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

// Usage
await ref.read(authProvider.notifier).syncNow();
```

## Benefits

✅ **Complete Data Sync** - All master data imported on login
✅ **Offline First** - Data stored locally for offline access
✅ **Incremental Updates** - Only fetch changed data on subsequent syncs
✅ **Type Safe** - Uses Drift Companion objects for type safety
✅ **Error Handling** - Comprehensive error handling and user feedback
✅ **Clean Architecture** - Separation of concerns (Model, Service, API)
✅ **Logging** - Detailed logs for debugging
✅ **Performance** - Batch inserts for fast import
✅ **Dependency Order** - Imports in correct order to handle foreign keys
