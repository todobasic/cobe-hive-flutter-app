import 'dart:developer';

import 'package:cobe_task/leave_request.dart';
import 'package:cobe_task/networking/api_state.dart';
import 'package:cobe_task/networking/repository/absence_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createRequestNotiferProvider = StateNotifierProvider.autoDispose<
    CreateRequestNotifier, ApiState<LeaveRequest>>((ref) {
  final repo = ref.read(absenceRepositoryProvider);
  return CreateRequestNotifier(repo);
});

class CreateRequestNotifier extends StateNotifier<ApiState<LeaveRequest>> {
  final AbsenceRepository _absenceRepository;
  CreateRequestNotifier(
    this._absenceRepository,
  ) : super(const ApiState.initial());

  createRequest(LeaveRequest leaveRequest) async {
    try {
      state = const ApiState.loading(null);
      await _absenceRepository.addAbsence(leaveRequest);
      state = ApiState.success(leaveRequest);
    } catch (e) {
      log('Error happened, $e');
      state = ApiState.error(e.toString());
    }
  }
}
