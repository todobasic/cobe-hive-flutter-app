import 'package:cobe_task/leave_request.dart';
import 'package:flutter/material.dart';

class RequestDetailsBar extends StatelessWidget {
  const RequestDetailsBar({
    super.key,
    required this.leaveRequest,
  });

  final LeaveRequest leaveRequest;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            'assets/images/selfie.jpg',
            height: 90.0,
            width: 90.0,
            fit: BoxFit.fill,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nepoznati korisnik',
                style: TextStyle(
                    fontFamily: 'FilsonPro',
                    fontSize: 25,
                    color: Color(0xff3D4766)),
              ),
              SizedBox(height: 5),
              Text(
                'iOS Developer',
                style: TextStyle(
                  fontFamily: 'FilsonPro',
                  fontSize: 15,
                  color: Color(0xffBCC4DC),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
