import 'package:cobe_task/networking/cobe_api.dart';
import 'package:cobe_task/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userRepositoryProvider = Provider<UserRepository>(
    (ref) => UserRepository(ref.read(cobeApiProvider)));

class UserRepository {
  final CobeApi _cobeApi;
  UserRepository(this._cobeApi);

  Future<List<UserModel>> getUsers() async {
    final response = await _cobeApi.getUsers();
    final userList =
        (response.data as List).map((e) => UserModel.fromJson(e)).toList();
    return userList;
  }
}
