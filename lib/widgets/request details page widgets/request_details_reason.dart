import 'package:cobe_task/leave_request.dart';
import 'package:flutter/material.dart';

class RequestDetailsReason extends StatelessWidget {
  const RequestDetailsReason({
    super.key,
    required this.leaveRequest,
  });

  final LeaveRequest leaveRequest;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Reason',
            style: TextStyle(
              color: Color(0xff3D4766),
              fontFamily: 'FilsonPro',
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffE9ECF4),
            ),
            height: 50,
            width: double.infinity,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  leaveRequest.reason,
                  style: const TextStyle(
                    fontFamily: 'FilsonPro',
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
