import 'package:cobe_task/widgets/create%20request%20page%20widgets/type_of_leave_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final leaveTypeNotifierProvider =
    StateProvider.autoDispose<String>((_) => leaveTypes[0]);
