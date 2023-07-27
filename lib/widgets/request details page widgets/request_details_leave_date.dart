import 'package:cobe_task/leave_request.dart';
import 'package:flutter/material.dart';

class RequestDetailsLeaveDate extends StatelessWidget {
  const RequestDetailsLeaveDate({
    super.key,
    required this.leaveRequest,
  });

  final LeaveRequest leaveRequest;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'FROM',
              style: TextStyle(
                color: Color(0xff3D4766),
                fontFamily: 'FilsonPro',
                fontSize: 17,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(width: 20),
            Text(
              leaveRequest.startDate.toString(),
              style: const TextStyle(
                fontFamily: 'FilsonPro',
                fontSize: 15,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 28, top: 10),
          child: Row(
            children: [
              const Text(
                'TO',
                style: TextStyle(
                    color: Color(0xff3D4766),
                    fontFamily: 'FilsonPro',
                    fontSize: 17,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(width: 20),
              Text(
                leaveRequest.endDate.toString(),
                style: const TextStyle(
                  fontFamily: 'FilsonPro',
                  fontSize: 15,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
