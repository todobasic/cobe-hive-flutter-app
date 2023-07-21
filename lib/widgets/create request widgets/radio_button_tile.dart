import 'package:cobe_task/leave_request.dart';
import 'package:cobe_task/providers/create%20request%20page%20providers/leave_viewpermission_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RadioButtonTile extends ConsumerWidget {
  const RadioButtonTile({
    super.key,
    required this.viewPermission,
    required this.viewer,
  });

  final ViewPermission viewPermission;
  final String viewer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final radioButtonViewer = ref.watch(viewPermissionProvider);
    return Container(
      height: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(14, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    viewer,
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'FilsonPro',
                      color: Color(0xff3D4766),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Text here',
                    style: TextStyle(
                      fontFamily: 'FilsonPro',
                      fontSize: 15,
                      color: Color(0xffBCC4DC),
                    ),
                  )
                ],
              ),
            ),
          ),
          Radio(
            fillColor: MaterialStateColor.resolveWith(
              (states) => const Color(0xffBCC4DC),
            ),
            groupValue: radioButtonViewer,
            value: viewPermission,
            onChanged: (value) {
              ref.read(viewPermissionProvider.notifier).state = value!;
            },
          )
        ],
      ),
    );
  }
}
