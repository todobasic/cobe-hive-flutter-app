import 'package:flutter/material.dart';

class ManageRequestsBar extends StatelessWidget {
  const ManageRequestsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Manage Requests',
          style: TextStyle(
              fontFamily: 'FilsonPro',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xff3D4766)),
        ),
        Spacer(),
        Text(
          'See all',
          style: TextStyle(
              fontFamily: 'FilsonPro', fontSize: 15, color: Colors.deepOrange),
        )
      ],
    );
  }
}
