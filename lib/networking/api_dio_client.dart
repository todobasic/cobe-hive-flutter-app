import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>(
  (ref) => Dio(
    BaseOptions(baseUrl: 'http://10.0.2.2:8080', headers: {
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNiIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNjg4MTMwNjk3fQ.BL5VySvQpG4X8nxGtBLymJzvCMpWhg8oxiWrJbLGEWM'
    }),
  ),
);

final apiClientProvider = Provider<ApiClient>(
  (ref) => ApiClient(
    ref.read(dioProvider),
  ),
);

class ApiClient {
  final Dio _dio;
  ApiClient(this._dio);

  Future<Response> post({
    String path = '',
    Map<String, dynamic> data = const {},
  }) async =>
      await _dio.post(path, data: data);

  Future<Response> get({
    String path = '',
  }) async =>
      await _dio.get(path);
}
