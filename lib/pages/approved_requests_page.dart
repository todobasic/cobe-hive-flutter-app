import 'package:cobe_task/widgets/approved%20requests%20page%20widgets/approved_requests_list.dart';
import 'package:cobe_task/widgets/home%20page%20widgets/fab_homepage.dart';
import 'package:cobe_task/widgets/request%20board%20page%20widgets/request_board_header.dart';
import 'package:flutter/material.dart';

class ApprovedRequestsScreen extends StatelessWidget {
  const ApprovedRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FabHomepage(),
      body: Container(
        color: const Color(0xfff2f7ff),
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 80, 40, 18),
              child: RequestBoardHeader(),
            ),
            SizedBox(
              height: 700,
              child: ApprovedRequestsList(),
            ),
          ],
        ),
      ),
    );
  }
}
