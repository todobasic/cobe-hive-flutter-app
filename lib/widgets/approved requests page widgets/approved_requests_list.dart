import 'package:cobe_task/providers/approved%20requests%20page%20providers/approved_requests_provider.dart';
import 'package:cobe_task/widgets/approved%20requests%20page%20widgets/approved_request_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ApprovedRequestsList extends ConsumerWidget {
  const ApprovedRequestsList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final approvedRequestsList = ref.watch(approvedRequestsProvider);
    if (approvedRequestsList.isEmpty) {
      return _NoApprovedRequests();
    }
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
          child: Row(
            children: [
              Text(
                'Approved',
                style: TextStyle(
                  fontFamily: 'FilsonPro',
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 650,
          child: ListView.separated(
            itemCount: approvedRequestsList.length,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            separatorBuilder: (context, index) => const SizedBox(height: 18),
            itemBuilder: (context, index) {
              final request = approvedRequestsList[index];
              return ApprovedRequestCard(leaveRequest: request);
            },
          ),
        ),
      ],
    );
  }
}

class _NoApprovedRequests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        SizedBox(
          child: Center(
            child: Column(
              children: [
                const Text(
                  'No requests!',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'FilsonPro',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff3D4766),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                const Text(
                  'You can take a time off.',
                  style: TextStyle(
                    color: Color(0xffBCC4DC),
                    fontFamily: 'FilsonPro',
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 75),
                Image.asset('assets/images/Ink.png')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
