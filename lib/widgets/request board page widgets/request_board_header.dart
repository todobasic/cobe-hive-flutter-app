import 'package:flutter/material.dart';

class RequestBoardHeader extends StatelessWidget {
  const RequestBoardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 28,
          height: 28,
          child: IconButton(
            onPressed: Navigator.of(context).pop,
            icon: const Icon(Icons.arrow_back_ios),
            color: const Color(0xff3D4766),
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 7),
            child: Text(
              'Request Board',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'FilsonPro',
                fontSize: 22,
                color: Color(0xff3D4766),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
