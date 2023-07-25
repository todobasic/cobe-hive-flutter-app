import 'package:cobe_task/providers/create%20request%20page%20providers/leave_reason_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReasonTextField extends ConsumerWidget {
  const ReasonTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Reason',
          style: TextStyle(
              fontFamily: 'FilsonPro', fontSize: 17, color: Color(0xff3D4766)),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: TextField(
              maxLines: 7,
              decoration: const InputDecoration(
                hintText: 'Type something...',
                hintStyle: TextStyle(
                  fontFamily: 'FilsonPro',
                  color: Color(0xffBCC4DC),
                ),
                border: InputBorder.none,
              ),
              onChanged: (value) =>
                  ref.watch(leaveReasonProvider.notifier).state = value,
            ),
          ),
        )
      ],
    );
  }
}
