import 'package:infinibook_flutter/models/user.dart';

class DummyData {
  List<User> users = [
    User(
        imagePath: 'assets/images/chris_500.jpeg',
        name: 'Chris Marres',
        email: 'xristos.marres@gmail.com',
        books: 2,
        followers: 3,
        following: 4),
    User(
        imagePath: 'assets/images/chris_500.jpeg',
        name: 'Chris Marres',
        email: 'xristos.marres@gmail.com',
        books: 100,
        followers: 20,
        following: 30),
    User(
        imagePath: 'assets/images/chris_500.jpeg',
        name: 'Chris Marres',
        email: 'xristos.marres@gmail.com',
        books: 100,
        followers: 200,
        following: 300),
  ];
}
