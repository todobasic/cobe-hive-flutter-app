import 'dart:developer';

import 'package:cobe_task/leave_request.dart';
import 'package:cobe_task/networking/cobe_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final absenceRepositoryProvider = Provider<AbsenceRepository>(
    (ref) => AbsenceRepository(ref.read(cobeApiProvider)));

class AbsenceRepository {
  final CobeApi _cobeApi;
  AbsenceRepository(this._cobeApi);

  Future<List<LeaveRequest>> getAbsences() async {
    final response = await _cobeApi.getAbsences();
    final absenceList =
        (response.data as List).map((e) => LeaveRequest.fromJson(e)).toList();
    return absenceList;
  }

  Future<void> addAbsence(LeaveRequest leaveRequest) async {
    log(leaveRequest.toJson().toString());
    await _cobeApi.createAbsence(leaveRequest.toJson());
  }
}
