enum ViewPermission { everyone, admin }

class LeaveRequest {
  String user;
  String leaveType;
  DateTime startDate;
  DateTime endDate;
  String reason;
  ViewPermission viewPermission;
  bool isApproved;

  LeaveRequest({
    required this.user,
    required this.leaveType,
    required this.startDate,
    required this.endDate,
    required this.reason,
    required this.viewPermission,
    required this.isApproved,
  });
}
