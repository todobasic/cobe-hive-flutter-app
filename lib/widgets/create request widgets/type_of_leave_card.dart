import 'package:cobe_task/providers/create%20request%20page%20providers/leave_type_provider.dart';
import 'package:cobe_task/widgets/create%20request%20widgets/type_of_leave_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TypeOfLeaveCard extends ConsumerWidget {
  const TypeOfLeaveCard({
    super.key,
    required this.leaveType,
    required this.selectedLeaveType,
    required this.index,
  });

  final int index;
  final String leaveType;
  final String selectedLeaveType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(leaveTypeNotifierProvider.notifier).state = leaveType;
        Navigator.of(context).pop();
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              selectedLeaveType == leaveType
                  ? const BoxShadow(blurRadius: 10)
                  : const BoxShadow(blurRadius: 0)
            ]),
        width: 100,
        height: 50,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              leaveTypes[index],
              style: const TextStyle(fontFamily: 'FilsonPro', fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
