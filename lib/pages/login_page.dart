import 'package:cobe_task/networking/user_login.dart';
import 'package:cobe_task/widgets/login%20page%20widgets/cobelogo.dart';
import 'package:flutter/material.dart';

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
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xfff2f7ff),
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            const CobeLogo(),
            const Text(
              'Hive',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'FilsonPro',
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'FilsonPro',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.zero,
                    child: TextField(
                      controller: _emailController,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
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
                      controller: _passwordController,
                      textInputAction: TextInputAction.done,
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: GestureDetector(
                            onTap: () {},
                            child: const Icon(Icons.remove_red_eye)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 350,
              height: 65,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shadowColor: const Color.fromRGBO(252, 68, 2, 0.31),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                onPressed: () {
                  signIn(_emailController.text, _passwordController.text);
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'FilsonPro',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
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
