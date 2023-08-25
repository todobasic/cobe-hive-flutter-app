import 'package:cobe_task/networking/cobe_api.dart';
import 'package:cobe_task/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) => UserRepository(
      ref.read(cobeApiProvider),
      ref.read(usersBoxProvider),
      ref,
    ));

final usersBoxProvider =
    Provider<Box<UserModel>>((ref) => Hive.box('usersBox'));

class UserRepository {
  final CobeApi _cobeApi;
  final Ref ref;
  UserRepository(
    this._cobeApi,
    this._usersBox,
    this.ref,
  );

  final Box<UserModel> _usersBox;

  Future<List<UserModel>> getUsers() async {
    final response = await _cobeApi.getUsers();
    final userList =
        (response.data as List).map((e) => UserModel.fromJson(e)).toList();
    return userList;
  }

  Future<void> saveUsersLocally({
    required List<UserModel> users,
  }) async {
    for (final user in users) {
      await _usersBox.put(user.id, user);
    }
  }

  Future<List<UserModel>> fetchAllLocalUsers() async {
    final localusers = _usersBox.values.toList();
    return localusers;
  }

  Future<List<UserModel>> getUsersAnyhow({
    bool forceRefresh = false,
  }) async {
    const cacheValidTime = 30;
    final saveTimestamp = DateTime.now().subtract(const Duration(minutes: 40));
    final lastValidDate =
        saveTimestamp.add(const Duration(minutes: cacheValidTime));
    final isCacheFresh = DateTime.now().isAfter(lastValidDate);

    /// logika is cache fresh
    /// Sve ovo jos sredit
    if (isCacheFresh && !forceRefresh) {
      return fetchAllLocalUsers();
    }

    try {
      return getUsers();
    } catch (e) {
      if (forceRefresh) {
        rethrow;
      }
      return fetchAllLocalUsers();
    }
  }
}
