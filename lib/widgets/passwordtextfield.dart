import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Password',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'FilsonPro',
                fontStyle: FontStyle.normal),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.zero,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                suffixIcon: GestureDetector(
                    onTap: () {}, child: const Icon(Icons.remove_red_eye)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
