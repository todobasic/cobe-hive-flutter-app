import 'package:cobe_task/widgets/home%20page%20widgets/fab_homepage.dart';
import 'package:cobe_task/widgets/request%20board%20widgets/request_board_bar.dart';
import 'package:cobe_task/widgets/request%20board%20widgets/request_board_header.dart';
import 'package:cobe_task/widgets/request%20board%20widgets/request_pending_list.dart';
import 'package:flutter/material.dart';

class RequestBoardScreen extends StatelessWidget {
  const RequestBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FAB_homepage(),
      body: Container(
        color: const Color(0xfff2f7ff),
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 80, 40, 18),
              child: RequestBoardHeader(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 20, 40, 18),
              child: RequestBoardBar(),
            ),
            SizedBox(height: 700, child: RequestPendingList()),
          ],
        ),
      ),
    );
  }
}
