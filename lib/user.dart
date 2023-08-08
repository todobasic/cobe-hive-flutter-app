class UserModel {
  String? id;
  String? name;
  String? surname;
  String? role;
  late List<String> statusList = [];
  bool? isAdmin;
  String? email;
  String? phone;
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
