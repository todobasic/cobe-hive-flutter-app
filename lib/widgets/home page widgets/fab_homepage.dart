import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

// ignore: camel_case_types
class FabHomepage extends StatelessWidget {
  const FabHomepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      backgroundColor: Colors.deepOrange,
      childrenButtonSize: const Size(230, 35),
      icon: Icons.add,
      activeIcon: Icons.close,
      childPadding: const EdgeInsets.fromLTRB(0, 0, 90, 0),
      spaceBetweenChildren: 20,
      children: [
        SpeedDialChild(
            onTap: () => Navigator.of(context).pushNamed('/request'),
            backgroundColor: Colors.deepOrange,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                'Create Request',
                style: TextStyle(color: Colors.white, fontFamily: 'FilsonPro'),
              ),
            )),
        SpeedDialChild(
            backgroundColor: Colors.deepOrange,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text('Add Absence',
                  style:
                      TextStyle(color: Colors.white, fontFamily: 'FilsonPro')),
            )),
      ],
    );
  }
}
