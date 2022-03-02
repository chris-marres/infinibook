class User {
  final String imagePath;
  final String name;
  final String email;
  final int books;
  final int followers;
  final int following;

  const User({
    required this.imagePath,
    required this.name,
    required this.email,
    required this.books,
    required this.followers,
    required this.following,
  });
}

class UserPreferences {
  static const myUser = User(
    imagePath: 'assets/images/chris_500.jpeg',
    name: 'Chris Marres',
    email: 'xristos.marres@gmail.com',
    books: 2,
    followers: 3,
    following: 4,
  );
}
