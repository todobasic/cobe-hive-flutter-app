import 'package:flutter/material.dart';

class HomeBar extends StatelessWidget {
  const HomeBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            'assets/images/selfie.jpg',
            height: 50.0,
            width: 50.0,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
          child: const Text(
            'Home',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Flexible(
          fit: FlexFit.tight,
          child: SizedBox(),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<CircleBorder>(
              const CircleBorder(side: BorderSide.none, eccentricity: 0.0),
            ),
            minimumSize: MaterialStateProperty.all<Size>(
              const Size(50, 50),
            ),
          ),
          child: const Icon(
            Icons.calendar_month_outlined,
            color: Colors.black,
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<CircleBorder>(
                  const CircleBorder(side: BorderSide.none, eccentricity: 0.0)),
              minimumSize: MaterialStateProperty.all<Size>(const Size(50, 50)),
            ),
            child: const Icon(Icons.notifications, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
