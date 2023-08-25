import 'package:intl/intl.dart';

enum ViewPermission { everyone, admin }

class LeaveRequest {
  String? user;
  String? leaveType;
  DateTime? startDate;
  DateTime? endDate;
  String? reason;
  ViewPermission? viewPermission;
  bool? isApproved;

  LeaveRequest({
    required this.user,
    required this.leaveType,
    required this.startDate,
    required this.endDate,
    required this.reason,
    required this.viewPermission,
    required this.isApproved,
  });

  LeaveRequest.fromJson(Map<String, dynamic> json) {
    leaveType = json['type'];
    startDate = DateFormat('yyyy-MM-ddTHH:mm:ss.SSS').parse(json['start']);
    endDate = DateFormat('yyyy-MM-ddTHH:mm:ss.SSS').parse(json['end']);
    reason = json['reason'];
    isApproved = json['approved'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = leaveType;
    data['start'] = DateFormat('yyyy-MM-dd').format(startDate!);
    data['end'] = DateFormat('yyyy-MM-dd').format(endDate!);
    data['reason'] = reason;
    data['approved'] = isApproved;
    return data;
  }
}
