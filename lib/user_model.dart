import 'package:hive_flutter/hive_flutter.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? surname;
  @HiveField(3)
  String? role;
  @HiveField(4)
  late List<String> statusList = [];
  @HiveField(5)
  bool? isAdmin;
  @HiveField(6)
  String? email;
  @HiveField(7)
  String? phone;
  @HiveField(8)
  String? imageUrl;

  UserModel({
    this.id,
    this.name,
    this.surname,
    this.role,
    List<String>? statusList,
    this.isAdmin,
    this.email,
    this.phone,
    this.imageUrl,
  });

  bool isOnline(UserModel user) {
    if (user.statusList.contains('online')) {
      return true;
    }
    return false;
  }

  UserModel.fromJson(Map<String, dynamic> json) {
    String status = json['status'];
    statusList.add(status);

    id = json['id'];
    name = json['name'];
    surname = json['surname'];
    role = json['role'];
    statusList = statusList;
    isAdmin = json['isAdmin'];
    email = json['email'];
    phone = json['phone'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['surname'] = surname;
    data['role'] = role;
    data['status'] = statusList;
    data['isAdmin'] = isAdmin;
    data['email'] = email;
    data['phone'] = phone;
    data['imageUrl'] = imageUrl;
    return data;
  }
}
