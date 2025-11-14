import 'package:flutter/widgets.dart';
import 'package:githubproject13/models/user.dart';
// import 'package:provider/provider.dart';

class UserViewModel with ChangeNotifier {
  User user = User(
    id: '123456798',
    name: 'Eric',
    email: 'janson@university.com',
    avatarUrl: 'assets/profile.png',
    bio: 'Final year IT Student'
  );
  String get name => user.name;
  String get id => user.id;
  String get email => user.email;
  String get avatarUrl => user.avatarUrl;
  String get bio => user.bio;

  void setName(String name) {
    user.name = name;
    notifyListeners();
  }

  void setEmail(String email) {
    user.email = email;
    notifyListeners();
  }

  void setAvatarUrl(String name) {
    user.avatarUrl = avatarUrl;
    notifyListeners();
  }

  void setBio(String bio) {
    user.bio = bio;
    notifyListeners();
  }
}
