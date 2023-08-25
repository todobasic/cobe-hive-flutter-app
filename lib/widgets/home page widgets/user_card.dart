import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.user});

  final user;

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
                  CircleAvatar(
                    radius: 40,
                    child: ClipOval(
                      child: Image.network(
                        'http://10.0.2.2:8080${user.imageUrl}',
                      ),
                    ),
                  ),
                  if (user.isOnline(user))
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
                    '${user.name ?? ''} ${user.surname}',
                    style: const TextStyle(
                        fontFamily: 'FilsonPro',
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    user.role,
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
