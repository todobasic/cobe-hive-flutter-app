import 'package:flutter/material.dart';

class ReasonTextField extends StatelessWidget {
  const ReasonTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Reason',
          style: TextStyle(
              fontFamily: 'FilsonPro', fontSize: 17, color: Color(0xff3D4766)),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: TextField(
              maxLines: 7,
              decoration: InputDecoration(
                  hintText: 'Type something...',
                  hintStyle: TextStyle(
                    fontFamily: 'FilsonPro',
                    color: Color(0xffBCC4DC),
                  ),
                  border: InputBorder.none),
            ),
          ),
        )
      ],
    );
  }
}
