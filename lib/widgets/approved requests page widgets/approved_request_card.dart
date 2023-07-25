import 'package:cobe_task/leave_request.dart';
import 'package:flutter/material.dart';

class ApprovedRequestCard extends StatelessWidget {
  const ApprovedRequestCard({
    super.key,
    required this.leaveRequest,
  });

  final LeaveRequest leaveRequest;

  @override
  Widget build(BuildContext context) {
    final date =
        '${leaveRequest.startDate.month}.${leaveRequest.startDate.day} - ${leaveRequest.endDate.month}.${leaveRequest.endDate.day + 10}';
    return Container(
      width: 385,
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
            const SizedBox(height: 45),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xff00BA88),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
                    child: Text(
                      'Approved',
                      style: TextStyle(
                        fontFamily: 'FilsonPro',
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 35,
                  height: 25,
                  child: Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xffE8EEFA),
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                      ),
                      onPressed: () {},
                      child: const Icon(
                        Icons.arrow_forward_sharp,
                        size: 17,
                        color: Color(0xff3D4766),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
