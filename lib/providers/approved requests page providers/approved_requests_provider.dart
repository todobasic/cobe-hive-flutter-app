import 'package:cobe_task/leave_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final approvedRequestsProvider =
    StateNotifierProvider<ApprovedRequestsProvider, List<LeaveRequest>>(
        (ref) => ApprovedRequestsProvider());

class ApprovedRequestsProvider extends StateNotifier<List<LeaveRequest>> {
  ApprovedRequestsProvider() : super([]);

  void approveRequest(LeaveRequest leaveRequest) {
    if (leaveRequest.isApproved == false) {
      leaveRequest.isApproved = true;
      state = [...state, leaveRequest];
    }
  }
}
