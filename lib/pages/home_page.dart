// ignore_for_file: avoid_print, must_call_super

import 'package:cobe_task/providers/home%20page%20providers/filtered_users_provider.dart';
import 'package:cobe_task/widgets/home%20page%20widgets/fab_homepage.dart';
import 'package:cobe_task/widgets/home%20page%20widgets/filterslist.dart';
import 'package:cobe_task/widgets/home%20page%20widgets/homebar.dart';
import 'package:cobe_task/widgets/home%20page%20widgets/searchbar.dart';
import 'package:cobe_task/widgets/home%20page%20widgets/users_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userList = ref.watch(filteredUsersProvider);

    print('userList: $userList');

    return Scaffold(
      body: Container(
        color: const Color(0xfff2f7ff),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0),
              child: const HomeBar(),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Searchbar(),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 18),
              child: SizedBox(
                height: 45,
                child: FiltersList(),
              ),
            ),
            Expanded(
              child: UsersListView(userList: userList),
            ),
          ],
        ),
      ),
      floatingActionButton: const FabHomepage(),
    );
  }
}
