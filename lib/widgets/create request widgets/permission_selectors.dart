import 'package:cobe_task/leave_request.dart';
import 'package:cobe_task/providers/create%20request%20page%20providers/leave_viewpermission_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PermissionSelectors extends ConsumerWidget {
  const PermissionSelectors({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewPermission = ref.watch(viewPermissionProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Who can view my request?',
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: 'FilsonPro', fontSize: 20, color: Color(0xff3D4766)),
        ),
        const SizedBox(height: 15),
        Container(
          height: 65,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Everyone',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'FilsonPro',
                            color: Color(0xff3D4766)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Text here',
                        style: TextStyle(
                            fontFamily: 'FilsonPro',
                            fontSize: 15,
                            color: Color(0xffBCC4DC)),
                      )
                    ],
                  ),
                ),
              ),
              Radio(
                  fillColor: MaterialStateColor.resolveWith(
                      (states) => const Color(0xffBCC4DC)),
                  groupValue: viewPermission,
                  value: ViewPermission.everyone,
                  onChanged: (value) {
                    ref.read(viewPermissionProvider.notifier).state = value!;
                  })
            ],
          ),
        ),
        const SizedBox(height: 12),
        Container(
          height: 65,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Only Admin',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'FilsonPro',
                            color: Color(0xff3D4766)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Text here',
                        style: TextStyle(
                            fontFamily: 'FilsonPro',
                            fontSize: 15,
                            color: Color(0xffBCC4DC)),
                      )
                    ],
                  ),
                ),
              ),
              Radio(
                fillColor: MaterialStateColor.resolveWith(
                    (states) => const Color(0xffBCC4DC)),
                groupValue: viewPermission,
                value: ViewPermission.admin,
                onChanged: (value) {
                  ref.read(viewPermissionProvider.notifier).state = value!;
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
