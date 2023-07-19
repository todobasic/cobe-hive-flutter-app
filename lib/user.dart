class User {
  String name = '';
  String description = '';
  String imageUrl = '';
  List<String> statusList = [];
  late bool isOnline;

  User(
      {required this.name,
      required this.description,
      required this.imageUrl,
      required this.statusList,
      required this.isOnline});
}
