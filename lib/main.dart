import 'package:cobe_task/hive_initialiser.dart';
import 'package:cobe_task/pages/admin_home_page.dart';
import 'package:cobe_task/pages/approved_requests_page.dart';
import 'package:cobe_task/pages/create_request_page.dart';
import 'package:cobe_task/pages/home_page.dart';
import 'package:cobe_task/pages/login_page.dart';
import 'package:cobe_task/pages/request_board_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await initialiseHive();
  runApp(ProviderScope(
    child: MaterialApp(
      home: const AdminHomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/admin-home': (context) => const AdminHomeScreen(),
        '/request': (context) => const CreateRequestScreen(),
        '/login-screen': (context) => LoginScreen(),
        '/request-board': (context) => const RequestBoardScreen(),
        '/approved-requests': (context) => const ApprovedRequestsScreen(),
      },
    ),
  ));
}
