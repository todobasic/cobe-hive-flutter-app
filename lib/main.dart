import 'package:flutter/material.dart';
import 'package:cobe_task/pages/home_page.dart';

void main() {
  runApp(const CobeHiveApp());
}

class CobeHiveApp extends StatelessWidget {
  const CobeHiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      builder: (context, child) {
        return SafeArea(child: child!);
      },
      routes: {
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
