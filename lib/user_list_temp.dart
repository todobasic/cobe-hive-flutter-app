import 'package:cobe_task/user.dart';

abstract class UserListTemp {
  static final List<User> userList = [
    User(
        name: 'Tomislav Odobasic',
        description: 'Hello there',
        imageUrl: 'assets/images/selfie.jpg',
        statusList: ['Online'],
        isOnline: true),
    User(
        name: 'Antonio Puhanic',
        description: 'Hello there',
        imageUrl: 'assets/images/selfie.jpg',
        statusList: ['Parental'],
        isOnline: false),
    User(
        name: 'Davor Stajcer',
        description: 'Hello there',
        statusList: ['Online'],
        imageUrl: 'assets/images/selfie.jpg',
        isOnline: true),
    User(
        name: 'Kresimir Forjan',
        description: 'Hello there',
        statusList: ['Sick'],
        imageUrl: 'assets/images/selfie.jpg',
        isOnline: false),
    User(
        name: 'Kresimir Forjan',
        description: 'Hello there',
        statusList: ['Vacation'],
        imageUrl: 'assets/images/selfie.jpg',
        isOnline: false),
  ];
}
