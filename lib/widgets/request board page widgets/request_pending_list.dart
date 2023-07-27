import 'package:cobe_task/providers/admin%20home%20page%20providers/created_leave_requests_list_provider.dart';
import 'package:cobe_task/widgets/request%20board%20page%20widgets/request_pending_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RequestPendingList extends ConsumerWidget {
  const RequestPendingList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final createdLeaveRequestList = ref.watch(createdLeaveRequestsProvider);
    return SizedBox(
      height: 150,
      child: ListView.separated(
        itemCount: createdLeaveRequestList.length,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        separatorBuilder: (context, index) => const SizedBox(height: 18),
        itemBuilder: (context, index) {
          final request = createdLeaveRequestList[index];
          return RequestPendingCard(leaveRequest: request);
        },
      ),
    );
  }
}
