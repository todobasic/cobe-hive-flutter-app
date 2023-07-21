import 'package:cobe_task/user.dart';
import 'package:cobe_task/widgets/user_list_temp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allUsersProvider = Provider<List<User>>((_) {
  return UserListTemp.userList;
});
