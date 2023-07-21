import 'package:flutter/material.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 50, 0),
            child: Text(
              'Date',
              style: TextStyle(
                  color: Color(0xffBCC4DC),
                  fontFamily: 'FilsonPro',
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Text(
            '19/07/2023 - 20/07/2023',
            style: TextStyle(
                fontFamily: 'FilsonPro',
                fontSize: 18,
                color: Color(0xff3D4766)),
          )
        ],
      ),
    );
  }
}
