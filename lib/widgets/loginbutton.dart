import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 65,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.deepOrange,
            shadowColor: const Color.fromRGBO(252, 68, 2, 0.31),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
        onPressed: () {},
        child: const Text(
          'Login',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'FilsonPro',
          ),
        ),
      ),
    );
  }
}
