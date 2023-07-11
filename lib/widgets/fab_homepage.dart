import 'package:flutter/material.dart';

// ignore: camel_case_types
class FAB_homepage extends StatelessWidget {
  const FAB_homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 65,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: () {},
          elevation: 0,
          backgroundColor: Colors.deepOrange,
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.redAccent.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
