import 'package:flutter/widgets.dart';
import 'package:githubproject13/models/post.dart';

class PostViewModel with ChangeNotifier {
  Post post = Post(
    id: 'post001',
    author: 'Eric',
    content: 'Welcome to Campus Connect!',
    createdAt: DateTime.now(),
    likes: 10,
  );

  String get id => post.id;
  String get author => post.author;
  String get content => post.content;
  DateTime get createdAt => post.createdAt;
  int get likes => post.likes;

  void setAuthor(String value) {
    post.author = value;
    notifyListeners();
  }

  void setContent(String value) {
    post.content = value;
    notifyListeners();
  }

  void addLike() {
    post.likes++;
    notifyListeners();
  }
}
