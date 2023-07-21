import 'package:cobe_task/leave_request.dart';
import 'package:cobe_task/leave_request_list_temp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allRequestsProvider =
    Provider<List<LeaveRequest>>((_) => LeaveRequestListTemp.leaveRequestList);
