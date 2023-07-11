import 'package:cobe_task/user.dart';

class Resources {
  static final List<User> userList = [
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

  static List<User> foundUsers = [];

  static List<String> filters = [
    'Offline',
    'Online',
    'Parental',
    'Sick',
    'Vacation',
    'Away',
  ];
}
