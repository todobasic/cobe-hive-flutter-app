import 'package:cobe_task/widgets/create%20request%20page%20widgets/create_request_button.dart';
import 'package:cobe_task/widgets/create%20request%20page%20widgets/create_request_header.dart';
import 'package:cobe_task/widgets/create%20request%20page%20widgets/date_picker.dart';
import 'package:cobe_task/widgets/create%20request%20page%20widgets/permission_selectors.dart';
import 'package:cobe_task/widgets/create%20request%20page%20widgets/reason_text_field.dart';
import 'package:cobe_task/widgets/create%20request%20page%20widgets/type_of_leave_selector.dart';
import 'package:flutter/material.dart';

class CreateRequestScreen extends StatelessWidget {
  const CreateRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xfff2f7ff),
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 80, 40, 18),
              child: CreateRequestHeader(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(17, 44, 14, 0),
              child: TypeOfLeaveSelector(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(17, 10, 14, 0),
              child: DatePicker(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(17, 20, 14, 0),
              child: ReasonTextField(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(17, 25, 14, 0),
              child: PermissionSelectors(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(17, 85, 14, 0),
              child: CreateRequestButtons(),
            )
          ],
        ),
      ),
    );
  }
}
