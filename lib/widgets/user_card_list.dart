import 'package:cobe_task/user_card.dart';
import 'package:flutter/material.dart';
import 'package:cobe_task/user.dart';

class UserCardList extends StatelessWidget {
  const UserCardList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<User> userList = [
      User(
          name: 'Tomislav Odobasic',
          description: 'Hello there',
          imageUrl: 'assets/images/selfie.jpg',
          status: 'Online',
          isOnline: true),
      User(
          name: 'Antonio Puhanic',
          description: 'Hello there',
          imageUrl: 'assets/images/selfie.jpg',
          status: 'Parental',
          isOnline: false),
      User(
          name: 'Davor Stajcer',
          description: 'Hello there',
          status: 'Online',
          imageUrl: 'assets/images/selfie.jpg',
          isOnline: true),
      User(
          name: 'Kresimir Forjan',
          description: 'Hello there',
          status: 'Sick',
          imageUrl: 'assets/images/selfie.jpg',
          isOnline: false),
      User(
          name: 'Kresimir Forjan',
          description: 'Hello there',
          status: 'Vacation',
          imageUrl: 'assets/images/selfie.jpg',
          isOnline: false),
    ];
    return Expanded(
      child: ListView.separated(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final user = userList[index];
            return UserCard(user: user);
          },
          separatorBuilder: (context, index) => const SizedBox(height: 1),
          itemCount: userList.length),
    );
  }
}
