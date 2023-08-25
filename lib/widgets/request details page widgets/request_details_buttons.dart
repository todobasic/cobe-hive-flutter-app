import 'package:cobe_task/leave_request.dart';
import 'package:cobe_task/providers/admin%20home%20page%20providers/created_leave_requests_list_provider.dart';
import 'package:cobe_task/providers/approved%20requests%20page%20providers/approved_requests_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RequestDetailsButtons extends ConsumerWidget {
  const RequestDetailsButtons({
    super.key,
    required this.leaveRequest,
  });

  final LeaveRequest leaveRequest;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 100,
          height: 45,
          child: ElevatedButton(
            onPressed: leaveRequest.isApproved!
                ? null
                : () {
                    ref
                        .read(createdLeaveRequestsProvider.notifier)
                        .removeRequest(leaveRequest);
                  },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xfff2f7ff),
              elevation: 0,
              disabledBackgroundColor: const Color(0xfff2f7ff).withOpacity(0.5),
            ),
            child: const Text(
              'Reject',
              style: TextStyle(
                fontFamily: 'FilsonPro',
                fontSize: 17,
                color: Colors.deepOrange,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 110,
          height: 45,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              disabledBackgroundColor: Colors.deepOrange.withOpacity(0.5),
              backgroundColor: Colors.deepOrange,
              shadowColor: const Color.fromRGBO(252, 68, 2, 0.31),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: leaveRequest.isApproved!
                ? null
                : () {
                    ref
                        .read(approvedRequestsProvider.notifier)
                        .approveRequest(leaveRequest);
                    ref
                        .read(createdLeaveRequestsProvider.notifier)
                        .removeRequest(leaveRequest);
                  },
            child: const Text(
              'Approve',
              style: TextStyle(
                fontFamily: 'FilsonPro',
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
