import 'package:cobe_task/providers/create%20request%20page%20providers/leave_type_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final List<String> leaveTypes = [
  'Parental',
  'Sick',
  'Vacation',
  'Other',
];

class TypeOfLeaveList extends ConsumerWidget {
  const TypeOfLeaveList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedLeaveType = ref.watch(leaveTypeNotifierProvider);
    return SizedBox(
      height: 400,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              child: Text(
                'Type of Leave',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'FilsonPro',
                    fontSize: 20,
                    color: Color(0xff3D4766)),
              ),
            ),
            const SizedBox(height: 30),
            ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (itemBuilderContext, index) {
                  final leaveType = leaveTypes[index];
                  return GestureDetector(
                    onTap: () {
                      ref.read(leaveTypeNotifierProvider.notifier).state =
                          leaveType;
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
                            style: const TextStyle(
                                fontFamily: 'FilsonPro', fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 30),
                itemCount: leaveTypes.length)
          ],
        ),
      ),
    );
  }
}
