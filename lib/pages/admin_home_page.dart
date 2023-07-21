import 'package:cobe_task/widgets/admin%20home%20page%20widgets/leave_request_list.dart';
import 'package:cobe_task/widgets/admin%20home%20page%20widgets/manage_requests_bar.dart';
import 'package:cobe_task/widgets/home%20page%20widgets/fab_homepage.dart';
import 'package:cobe_task/widgets/home%20page%20widgets/filterslist.dart';
import 'package:cobe_task/widgets/home%20page%20widgets/homebar.dart';
import 'package:cobe_task/widgets/home%20page%20widgets/searchbar.dart';
import 'package:cobe_task/widgets/home%20page%20widgets/user_card_list.dart';
import 'package:flutter/material.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xfff2f7ff),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0),
              child: const HomeBar(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: ManageRequestsBar(),
            ),
            const SizedBox(height: 15),
            const LeaveRequestList(),
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
    );
  }
}
