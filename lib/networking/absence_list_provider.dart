import 'package:cobe_task/leave_request.dart';
import 'package:cobe_task/networking/api_state.dart';
import 'package:cobe_task/networking/repository/absence_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final absenceListProvider =
    StateNotifierProvider<AbsenceListNotifier, ApiState<List<LeaveRequest>>>(
  (ref) => AbsenceListNotifier(
    ref.read(absenceRepositoryProvider),
  ),
);

class AbsenceListNotifier extends StateNotifier<ApiState<List<LeaveRequest>>> {
  AbsenceListNotifier(this.absenceRepository)
      : super(const ApiState.initial()) {
    getAbsences();
  }
  final AbsenceRepository absenceRepository;

  getAbsences({
    bool showLoading = true,
  }) async {
    try {
      if (showLoading) {
        const ApiState.loading(null);
      }
      final absenceList = await absenceRepository.getAbsences();
      state = ApiState.success(absenceList);
    } catch (e) {
      state = ApiState.error(e.toString());
    }
  }
}

final absenceListPendingProvider =
    Provider((ref) => ref.watch(absenceListProvider).maybeWhen(
          orElse: () => [],
          success: (leaveRequestList) => leaveRequestList
              .where((leaveRequest) => leaveRequest.isApproved == false)
              .toList(),
        ));

final absenceListApprovedProvider =
    Provider((ref) => ref.watch(absenceListProvider).maybeWhen(
          orElse: () => [],
          success: (leaveRequestList) => leaveRequestList
              .where((leaveRequest) => leaveRequest.isApproved == true)
              .toList(),
        ));
