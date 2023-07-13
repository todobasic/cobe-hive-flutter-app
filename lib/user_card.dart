import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cobe_task/user.dart';

class UserCard extends StatelessWidget {
  final User user;
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
                      user.imageUrl,
                      height: 75.0,
                      width: 75.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  if (user.isOnline) 
                    Positioned(
                      right: 5,
                      top: 5,
                      child: SvgPicture.asset(
                        'assets/icons/status.svg',
                      ),
                    ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    user.name,
                    style: const TextStyle(
                        fontFamily: 'FilsonPro',
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    user.description,
                    style: const TextStyle(
                        fontFamily: 'FilsonPro', color: Colors.grey),
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
