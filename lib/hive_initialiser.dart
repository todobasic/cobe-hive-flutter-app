import 'package:cobe_task/user_model.dart';
import 'package:hive/hive.dart';

Future<void> initialiseHive() async {
  Hive.registerAdapter(UserModelAdapter());
}
