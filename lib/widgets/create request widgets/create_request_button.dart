import 'package:cobe_task/providers/create%20request%20page%20providers/leave_request_provider.dart';
import 'package:cobe_task/providers/home%20page%20providers/created_leave_requests_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateRequestButtons extends ConsumerWidget {
  const CreateRequestButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final request = ref.watch(leaveRequestProvider);
    final newRequest = ref.watch(createdLeaveRequestsProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 100,
          height: 45,
          child: ElevatedButton(
            onPressed: () {
              ref
                  .read(createdLeaveRequestsProvider.notifier)
                  .addRequest(request);
              showDialog(
                  context: context,
                  builder: (context) => const ShowAlertDialog());
              debugPrint('$newRequest');
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                shadowColor: const Color.fromRGBO(252, 68, 2, 0.31),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
            child: const Text(
              'Save',
              style: TextStyle(
                  fontFamily: 'FilsonPro', fontSize: 17, color: Colors.white),
            ),
          ),
        ),
        SizedBox(
            width: 100,
            height: 45,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xfff2f7ff), elevation: 0),
                onPressed: () {},
                child: const Text(
                  'Discard',
                  style: TextStyle(
                      fontFamily: 'FilsonPro',
                      fontSize: 17,
                      color: Colors.deepOrange),
                )))
      ],
    );
  }
}

class ShowAlertDialog extends StatelessWidget {
  const ShowAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      actionsAlignment: MainAxisAlignment.center,
      alignment: Alignment.center,
      title: const Center(
        child: Text(
          'Request Created',
          style: TextStyle(
              color: Color(0xff3D4766),
              fontFamily: 'FilsonPro',
              fontSize: 22,
              fontWeight: FontWeight.w700),
        ),
      ),
      content: const Text(
        'Your request is created and is currently being reviewed.',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'FilsonPro',
            fontSize: 20,
            color: Color.fromRGBO(61, 71, 102, 0.75)),
      ),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(color: Colors.deepOrange))),
          onPressed: () => Navigator.pop(context),
          child: const Text(
            'Okay',
            style: TextStyle(color: Colors.deepOrange, fontFamily: 'FilsonPro'),
          ),
        )
      ],
    );
  }
}
