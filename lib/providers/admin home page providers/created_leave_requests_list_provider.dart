import 'package:cobe_task/leave_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createdLeaveRequestsProvider =
    StateNotifierProvider<CreatedLeaveRequestsProvider, List<LeaveRequest>>(
  (ref) => CreatedLeaveRequestsProvider(),
);

class CreatedLeaveRequestsProvider extends StateNotifier<List<LeaveRequest>> {
  CreatedLeaveRequestsProvider() : super([]);

  void addRequest(LeaveRequest leaveRequest) {
    state = List.from(state)..add(leaveRequest);
  }

  void removeRequest(LeaveRequest leaveRequest) {
    state = List.from(state)..remove(leaveRequest);
  }
}
