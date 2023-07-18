import 'package:cobe_task/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:cobe_task/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => const LoginScreen(),
      '/home': (context) => const HomeScreen(),
    },
  ));
}
