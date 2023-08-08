import 'package:flutter/material.dart';
import 'package:cobe_task/user.dart';

class UserCard extends StatelessWidget {
  final UserModel user;
  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Card(
        child: Container(
          width: 340,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 10, color: Colors.white),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          margin: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/selfie.jpg',
                      height: 75.0,
                      width: 75.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '',
                    style: TextStyle(
                        fontFamily: 'FilsonPro',
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '',
                    style:
                        TextStyle(fontFamily: 'FilsonPro', color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
