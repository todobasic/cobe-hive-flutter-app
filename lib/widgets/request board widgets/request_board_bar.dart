import 'package:flutter/material.dart';

class RequestBoardBar extends StatelessWidget {
  const RequestBoardBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'Pending',
          style: TextStyle(
              fontFamily: 'FilsonPro',
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xff3D4766)),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed('/request-board'),
          child: const Text(
            'See approved',
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
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
