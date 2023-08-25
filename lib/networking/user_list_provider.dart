// ignore_for_file: avoid_print
import 'package:cobe_task/networking/api_state.dart';
import 'package:cobe_task/networking/repository/user_repository.dart';
import 'package:cobe_task/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userListProvider =
    StateNotifierProvider<UserListNotifier, ApiState<List<UserModel>>>(
        (ref) => UserListNotifier(ref.read(userRepositoryProvider)));

class UserListNotifier extends StateNotifier<ApiState<List<UserModel>>> {
  UserListNotifier(this.userRepository) : super(const ApiState.initial()) {
    getUsers();
  }

  final UserRepository userRepository;

  getUsers({
    bool showLoading = true,
  }) async {
    try {
      if (showLoading) {
        const ApiState.loading(null);
      }
      final userList = await userRepository.getUsersAnyhow();
      state = ApiState.success(userList);
    } catch (e) {
      state = ApiState.error(e.toString());
    }
  }
}
