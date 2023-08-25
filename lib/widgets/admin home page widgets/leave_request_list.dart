import 'package:cobe_task/networking/absence_list_provider.dart';
import 'package:cobe_task/widgets/admin%20home%20page%20widgets/leave_request_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LeaveRequestList extends ConsumerWidget {
  const LeaveRequestList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final createdLeaveRequestList = ref.watch(absenceListPendingProvider);
    if (createdLeaveRequestList.isEmpty) {
      return const _NoRequests();
    }
    return SizedBox(
      height: 150,
      child: ListView.separated(
        itemCount: createdLeaveRequestList.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        separatorBuilder: (context, index) => const SizedBox(width: 18),
        itemBuilder: (context, index) {
          final request = createdLeaveRequestList[index];
          return LeaveRequestCard(leaveRequest: request);
        },
      ),
    );
  }
}

class _NoRequests extends StatelessWidget {
  const _NoRequests();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 150,
      child: Center(
        child: Text(
          'No Requests at the moment',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'FilsonPro',
            fontWeight: FontWeight.w400,
            color: Color(0xff3D4766),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
