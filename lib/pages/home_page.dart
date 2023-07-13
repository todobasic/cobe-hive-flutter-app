import 'package:cobe_task/filtered_list_notifier.dart';
import 'package:cobe_task/user_list_temp.dart';
import 'package:cobe_task/widgets/fab_homepage.dart';
import 'package:cobe_task/widgets/filterslist.dart';
import 'package:cobe_task/widgets/homebar.dart';
import 'package:cobe_task/widgets/searchbar.dart';
import 'package:cobe_task/widgets/user_card_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FilteredListNotifier(UserListTemp.userList),
      child: Scaffold(
        body: Container(
          color: const Color(0x00f2f7ff),
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
              const UserCardList(),
            ],
          ),
        ),
        floatingActionButton: const FAB_homepage(),
      ),
    );
  }
}
