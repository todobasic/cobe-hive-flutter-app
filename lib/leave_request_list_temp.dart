import 'package:cobe_task/leave_request.dart';
import 'package:cobe_task/widgets/create%20request%20widgets/type_of_leave_list.dart';

abstract class LeaveRequestListTemp {
  static final List<LeaveRequest> leaveRequestList = [
    LeaveRequest(
        user: 'Davor',
        leaveType: leaveTypes[0],
        startDate: DateTime.now(),
        endDate: DateTime.now(),
        reason: 'Some reason...',
        viewPermission: ViewPermission.everyone),
    LeaveRequest(
        user: 'Antonio',
        leaveType: leaveTypes[1],
        startDate: DateTime.now(),
        endDate: DateTime.now(),
        reason: 'Some reason...',
        viewPermission: ViewPermission.everyone),
    LeaveRequest(
        user: 'Tomislav',
        leaveType: leaveTypes[2],
        startDate: DateTime.now(),
        endDate: DateTime.now(),
        reason: 'Some reason...',
        viewPermission: ViewPermission.everyone)
  ];
}
