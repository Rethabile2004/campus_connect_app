// models/user.dart
class User {
  final String id;
   String name;
   String email;
   String avatarUrl;
   String bio;
  // String course;
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.avatarUrl,
    this.bio = '',
  });
}
