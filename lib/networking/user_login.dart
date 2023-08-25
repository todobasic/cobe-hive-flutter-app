// ignore_for_file: avoid_print

import 'package:cobe_task/networking/api_dio_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class LoginState {}

class InitialState extends LoginState {}

class SuccessState extends LoginState {
  Response response;
  SuccessState(this.response);
}

class LoadingState extends LoginState {}

class FailureState extends LoginState {
  final String errorMessage;
  FailureState(this.errorMessage);
}

final loginNotifierProvider = StateNotifierProvider<LoginNotifier, LoginState>(
  (ref) => LoginNotifier(ref.read(apiClientProvider)),
);

class LoginNotifier extends StateNotifier<LoginState> {
  final ApiClient _apiClient;
  LoginNotifier(this._apiClient) : super(InitialState());

  Future<void> signIn(String email, String password) async {
    state = LoadingState();

    try {
      var response = await _apiClient.post(
        path: '/login',
        data: {
          'email': email,
          'password': password,
        },
      );

      print(response.data);

      state = SuccessState(response);
    } catch (e) {
      print(e.toString());
      state = FailureState(e.toString());
    }
  }
}
