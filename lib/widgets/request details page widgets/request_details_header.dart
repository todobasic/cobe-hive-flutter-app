import 'package:flutter/material.dart';

class RequestDetailsHeader extends StatelessWidget {
  const RequestDetailsHeader({
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
              'Request Details',
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
