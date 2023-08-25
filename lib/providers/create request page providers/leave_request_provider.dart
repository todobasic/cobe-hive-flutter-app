import 'package:cobe_task/leave_request.dart';
import 'package:cobe_task/providers/create%20request%20page%20providers/leave_reason_provider.dart';
import 'package:cobe_task/providers/create%20request%20page%20providers/leave_type_provider.dart';
import 'package:cobe_task/providers/create%20request%20page%20providers/leave_viewpermission_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final leaveRequestProvider = Provider.autoDispose((ref) {
  final leaveType = ref.watch(leaveTypeNotifierProvider);
  final leaveReason = ref.watch(leaveReasonProvider);
  final viewPermission = ref.watch(viewPermissionProvider);

  return LeaveRequest(
    user: 'Marko Markovic',
    leaveType: leaveType,
    startDate: DateTime.now(),
    endDate: DateTime.now().add(const Duration(days: 1)),
    reason: leaveReason,
    viewPermission: viewPermission,
    isApproved: false,
  );
});
