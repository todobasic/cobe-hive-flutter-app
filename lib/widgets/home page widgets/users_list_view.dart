import 'package:cobe_task/widgets/home%20page%20widgets/user_card.dart';
import 'package:flutter/material.dart';

class UsersListView extends StatelessWidget {
  const UsersListView({
    super.key,
    required this.userList,
  });

  final userList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        final user = userList[index];
        return UserCard(user: user);
      },
      separatorBuilder: (context, index) => const SizedBox(height: 1),
      itemCount: userList == null ? 0 : userList.length,
    );
  }
}
