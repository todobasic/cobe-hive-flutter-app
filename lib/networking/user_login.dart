// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

Future<Response?> signIn(String email, String password) async {
  var dio = Dio();
  try {
    var response = await dio.post(
      'http://localhost:8080/login',
      data: {
        'email': email,
        'password': password,
      },
    );
    print(response.data);
    return response;
  } catch (e) {
    print(e.toString());
  }
  return null;
}

Future<Response> getUsers() async {
  var dio = Dio();
  try {
    var response = await dio.get('http://localhost:8080/users');
    return response;
  } catch (e) {
    print(e);
    rethrow;
  }
}
