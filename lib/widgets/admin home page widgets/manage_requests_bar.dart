import 'package:flutter/material.dart';

class ManageRequestsBar extends StatelessWidget {
  const ManageRequestsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'Manage Requests',
          style: TextStyle(
              fontFamily: 'FilsonPro',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xff3D4766)),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed('/request-board'),
          child: const Text(
            'See all',
            style: TextStyle(
              fontFamily: 'FilsonPro',
              fontSize: 15,
              color: Colors.deepOrange,
            ),
          ),
        )
      ],
    );
  }
}
