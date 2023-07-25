import 'package:cobe_task/leave_request.dart';
import 'package:cobe_task/widgets/request%20details%20page%20widgets/request_details_bar.dart';
import 'package:cobe_task/widgets/request%20details%20page%20widgets/request_details_buttons.dart';
import 'package:cobe_task/widgets/request%20details%20page%20widgets/request_details_card.dart';
import 'package:cobe_task/widgets/request%20details%20page%20widgets/request_details_header.dart';
import 'package:cobe_task/widgets/request%20details%20page%20widgets/request_details_leave_date.dart';
import 'package:cobe_task/widgets/request%20details%20page%20widgets/request_details_reason.dart';
import 'package:flutter/material.dart';

class RequestDetailsScreen extends StatelessWidget {
  const RequestDetailsScreen({
    super.key,
    required this.leaveRequest,
  });

  final LeaveRequest leaveRequest;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xfff2f7ff),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 80, 40, 18),
              child: RequestDetailsHeader(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: RequestDetailsBar(leaveRequest: leaveRequest),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
              child: RequestDetailsCard(leaveRequest: leaveRequest),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 50, 30, 10),
              child: RequestDetailsLeaveDate(leaveRequest: leaveRequest),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 30, 30, 30),
              child: RequestDetailsReason(leaveRequest: leaveRequest),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 80, 30, 20),
              child: RequestDetailsButtons(leaveRequest: leaveRequest),
            ),
          ],
        ),
      ),
    );
  }
}
