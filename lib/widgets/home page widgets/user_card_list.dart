import 'package:cobe_task/providers/home%20page%20providers/filtered_users_provider.dart';
import 'package:cobe_task/widgets/home%20page%20widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserCardList extends ConsumerWidget {
  const UserCardList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(filteredUsersProvider);
    return users.when(
      data: (users) {
        return Expanded(
          child: ListView.separated(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final user = users[index];
              return UserCard(user: user);
            },
            separatorBuilder: (context, index) => const SizedBox(height: 1),
            itemCount: users.length,
          ),
        );
      },
      loading: () {
        return const CircularProgressIndicator();
      },
      error: (error, stackTrace) {
        return Text('Error: $error');
      },
    );
  }
}
