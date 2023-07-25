import 'package:cobe_task/providers/create%20request%20page%20providers/leave_type_provider.dart';
import 'package:cobe_task/widgets/create%20request%20page%20widgets/type_of_leave_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TypeOfLeaveSelector extends ConsumerWidget {
  const TypeOfLeaveSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLeaveType = ref.watch(leaveTypeNotifierProvider);
    return GestureDetector(
      onTap: () => showModalBottomSheet(
          showDragHandle: true,
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          context: context,
          builder: (context) {
            return const TypeOfLeaveList();
          }),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 50, 0),
              child: Text(
                'Type',
                style: TextStyle(
                    color: Color(0xffBCC4DC),
                    fontFamily: 'FilsonPro',
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Text(
              selectedLeaveType,
              style: const TextStyle(
                  fontFamily: 'FilsonPro',
                  fontSize: 18,
                  color: Color(0xff3D4766)),
            )
          ],
        ),
      ),
    );
  }
}
