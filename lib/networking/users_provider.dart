// ignore_for_file: avoid_print

import 'package:cobe_task/user.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allUsersProvider = FutureProvider<List<UserModel>>(
  (ref) async {
    const authToken =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNiIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNjg4MTMwNjk3fQ.BL5VySvQpG4X8nxGtBLymJzvCMpWhg8oxiWrJbLGEWM';
    final dio = Dio();
    dio.options.headers['authorization'] = authToken;

    var response = await dio.get('http://localhost:8080/users');
    print('API response: ${response.data}');
    if (response.statusCode == 200) {
      return (response.data as List)
          .map((userJson) => UserModel.fromJson(userJson))
          .toList();
    } else {
      throw Exception('Failed to fetch users');
    }
  },
);
