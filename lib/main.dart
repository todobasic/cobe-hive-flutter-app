import 'package:cobe_task/pages/admin_home_page.dart';
import 'package:cobe_task/pages/approved_requests_page.dart';
import 'package:cobe_task/pages/create_request_page.dart';
import 'package:cobe_task/pages/login_page.dart';
import 'package:cobe_task/pages/request_board_page.dart';
import 'package:flutter/material.dart';
import 'package:cobe_task/pages/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(
    child: MaterialApp(
      home: const AdminHomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/request': (context) => const CreateRequestScreen(),
        '/login-screen': (context) => const LoginScreen(),
        '/request-board': (context) => const RequestBoardScreen(),
        '/approved-requests': (context) => const ApprovedRequestsScreen(),
      },
    ),
  ));
}
