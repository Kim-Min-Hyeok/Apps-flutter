class UserModel {
  late String uid;
  late String name;
  late String email;
  late String isAdmin;
  late Map<String, dynamic> posts;

  UserModel({
    required this.uid,
    required this.name,
    required this.email,
    required this.isAdmin,
    required this.posts,
  });
}