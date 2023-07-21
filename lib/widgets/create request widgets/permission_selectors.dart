import 'package:cobe_task/leave_request.dart';
import 'package:cobe_task/widgets/create%20request%20widgets/radio_button_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final List<String> viewers = [
  'Everyone',
  'Only Admin',
];

class PermissionSelectors extends ConsumerWidget {
  const PermissionSelectors({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        RadioButtonTile(
          viewPermission: ViewPermission.everyone,
          viewer: viewers[0],
        ),
        const SizedBox(height: 12),
        RadioButtonTile(
          viewPermission: ViewPermission.admin,
          viewer: viewers[1],
        ),
      ],
    );
  }
}
