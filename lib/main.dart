import 'package:flutter/material.dart';
import 'package:cobe_task/pages/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(
      child: MaterialApp(
    home: HomeScreen(),
  )));
}
