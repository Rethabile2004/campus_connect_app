// models/post.dart
class Post {
  final String id;
   String author;
   String content;
   DateTime createdAt;
   int likes;

  Post({
    required this.id,
    required this.author,
    required this.content,
    required this.createdAt,
    this.likes = 0,
  });
}
