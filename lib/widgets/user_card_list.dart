import 'package:cobe_task/user_card.dart';
import 'package:cobe_task/filtered_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserCardList extends StatelessWidget {
  const UserCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<FilteredListNotifier>(
        builder: (context, provider, _) {
          final users = provider.filteredUsers;
          return ListView.separated(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final user = users[index];
                return UserCard(user: user);
              },
              separatorBuilder: (context, index) => const SizedBox(height: 1),
              itemCount: users.length);
        },
      ),
    );
  }
}
