class User {
  String name = '';
  String description = '';
  String imageUrl = '';
  String status = '';
  late bool isOnline;

  User(
      {required this.name,
      required this.description,
      required this.imageUrl,
      required this.status,
      required this.isOnline});
}
