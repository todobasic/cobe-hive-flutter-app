import 'package:cobe_task/widgets/login%20page%20widgets/cobelogo.dart';
import 'package:cobe_task/widgets/login%20page%20widgets/loginbutton.dart';
import 'package:cobe_task/widgets/login%20page%20widgets/passwordtextfield.dart';
import 'package:flutter/material.dart';
import 'package:cobe_task/widgets/login page widgets/emailtextfield.dart';

void main() {
  runApp(const MaterialApp(
    home: LoginScreen(),
  ));
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xfff2f7ff),
        child: const Column(
          children: [
            SizedBox(
              height: 150,
            ),
            CobeLogo(),
            Text(
              'Hive',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'FilsonPro',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            EmailTextField(),
            SizedBox(
              height: 30,
            ),
            PasswordTextField(),
            SizedBox(
              height: 30,
            ),
            LoginButton(),
            SizedBox(
              height: 30,
            ),
            Text(
              'Reset your password?',
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepOrange,
                fontFamily: 'FilsonPro',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
