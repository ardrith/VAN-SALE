import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../features/auth/models/user_model.dart';
import '../../features/auth/models/master_import_model.dart';

class ApiClient {
  static const _baseUrl = 'https://login.glowsis.com';
  final _storage = const FlutterSecureStorage();
  late final Dio dio;

  ApiClient() {
    dio = Dio(BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 120),
    ));
  }

  Future<User> login(
      String companyName, String username, String password) async {
    final syskey = await _storage.read(key: 'syskey') ?? '';
    const uri = 'https://login.glowsis.com/erp_login';
    final params = {
      'org': companyName,
      'username': username,
      'password': password,
      'syskey': syskey,
    };
    print('LOGIN URL: $uri');
    print('LOGIN PARAMS: $params');
    final res = await dio.get(uri, queryParameters: params);
    print('LOGIN STATUS: ${res.statusCode}');
    print('LOGIN BODY: ${res.data}');
    final data = res.data is String
        ? jsonDecode(res.data as String) as Map<String, dynamic>
        : res.data as Map<String, dynamic>;
    print('LOGIN PARSED: $data');
    final user = User.fromJson(data);
    if (user.errorNo == 0) return user;
    if (user.errorNo == 606) throw Exception('OTP verification required');
    if (user.errorNo == 607) throw Exception('Mobile number does not exist');
    throw Exception('Invalid login details');
  }

  Future<MasterImport> fetchMasterData(
    String apiKey, {
    String updatedTime = '2000-10-04',
  }) async {
    const uri = 'https://login.glowsis.com/masterimport/offline';
    final params = {'api_key': apiKey, 'UpdatedTime': updatedTime};
    print('MASTER URL: $uri');
    print('MASTER PARAMS: $params');
    final res = await dio.get(uri, queryParameters: params);
    print('MASTER STATUS: ${res.statusCode}');
    print('MASTER BODY: ${res.data}');
    final data = res.data is String
        ? jsonDecode(res.data as String) as Map<String, dynamic>
        : res.data as Map<String, dynamic>;
    print('MASTER PARSED KEYS: ${data.keys.toList()}');
    final masterData = data['data'];
    if (masterData is Map) {
      print('MASTER DATA KEYS: ${masterData.keys.toList()}');
    } else {
      print('MASTER DATA TYPE: ${masterData.runtimeType}');
    }
    return MasterImport.fromJson(data);
  }

  Future<void> pushOrder(Map<String, dynamic> payload) async {
    await dio.post('/orders', data: payload);
  }
}
