import 'package:cobe_task/providers/users_notifier.dart';
import 'package:cobe_task/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserCardList extends ConsumerWidget {
  const UserCardList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(usersProvider);
    return Expanded(
      child: ListView.separated(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final user = users[index];
            return UserCard(user: user);
          },
          separatorBuilder: (context, index) => const SizedBox(height: 1),
          itemCount: users.length),
    );
  }
}
