import 'package:cobe_task/leave_request.dart';
import 'package:cobe_task/providers/admin%20home%20page%20providers/created_leave_requests_list_provider.dart';
import 'package:cobe_task/providers/approved%20requests%20page%20providers/approved_requests_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RequestPendingCard extends ConsumerWidget {
  const RequestPendingCard({
    super.key,
    required this.leaveRequest,
  });

  final LeaveRequest leaveRequest;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date =
        '${leaveRequest.startDate.month}.${leaveRequest.startDate.day} - ${leaveRequest.endDate.month}.${leaveRequest.endDate.day + 10}';

    return Container(
      width: 390,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              leaveRequest.leaveType,
              style: const TextStyle(
                fontFamily: 'FilsonPro',
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Color(0xff3D4766),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              '${leaveRequest.endDate.day + 10} days · $date ${leaveRequest.startDate.year}',
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontFamily: 'FilsonPro',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Color(0xffBCC4DC),
              ),
            ),
            const SizedBox(height: 29),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/selfie.jpg',
                    height: 32.0,
                    width: 32.0,
                    fit: BoxFit.fill,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, elevation: 0),
                  onPressed: () {},
                  child: const Text(
                    'Reject',
                    style: TextStyle(
                        fontFamily: 'FilsonPro',
                        fontSize: 17,
                        color: Colors.deepOrange),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    ref
                        .read(approvedRequestsProvider.notifier)
                        .approveRequest(leaveRequest);
                    ref
                        .read(createdLeaveRequestsProvider.notifier)
                        .removeRequest(leaveRequest);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Row(
                          children: [
                            Icon(
                              Icons.check_sharp,
                              color: Colors.green,
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Approved',
                              style: TextStyle(
                                fontFamily: 'FilsonPro',
                                color: Color(0xff3D4766),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        backgroundColor: Colors.white,
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {},
                        ),
                        behavior: SnackBarBehavior.floating,
                        margin: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(
                            color: Colors.green,
                            width: 2,
                          ),
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shadowColor: const Color.fromRGBO(252, 68, 2, 0.31),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Approve',
                    style: TextStyle(
                        fontFamily: 'FilsonPro',
                        fontSize: 17,
                        color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
