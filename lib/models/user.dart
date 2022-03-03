import 'package:infinibook_flutter/models/book.dart';

class User {
  final String imagePath;
  String name;
  String email;
  int books;
  int followers;
  int following;
  List<Book> booksList;

  User({
    required this.imagePath,
    required this.name,
    required this.email,
    required this.books,
    required this.followers,
    required this.following,
    this.booksList = const [],
  });
}
