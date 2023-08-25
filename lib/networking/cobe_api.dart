import 'package:cobe_task/networking/api_dio_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cobeApiProvider =
    Provider<CobeApi>((ref) => CobeApi(ref.watch(apiClientProvider)));

class CobeApi {
  final ApiClient _apiClient;

  CobeApi(this._apiClient);

  Future<Response> signIn(String email, String password) async =>
      await _apiClient.post(path: '/login', data: {
        'email': email,
        'password': password,
      });

  Future<Response> getUsers() async =>
      await _apiClient.get(path: 'http://10.0.2.2:8080/users');

  Future<Response> getAbsences() async =>
      await _apiClient.get(path: 'http://10.0.2.2:8080/absence');

  Future<Response> createAbsence(Map<String, dynamic> absence) async =>
      await _apiClient.post(
        path: 'http://10.0.2.2:8080/absence',
        data: absence,
      );
}
