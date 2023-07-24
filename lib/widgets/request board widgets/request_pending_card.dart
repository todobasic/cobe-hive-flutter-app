import 'package:cobe_task/leave_request.dart';
import 'package:flutter/material.dart';

class RequestPendingCard extends StatelessWidget {
  const RequestPendingCard({
    super.key,
    required this.leaveRequest,
  });

  final LeaveRequest leaveRequest;

  @override
  Widget build(BuildContext context) {
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
                  onPressed: () {},
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
