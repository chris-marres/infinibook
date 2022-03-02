class User {
  final String imagePath;
  final String name;
  final String email;
  int books;
  int followers;
  int following;

  User({
    required this.imagePath,
    required this.name,
    required this.email,
    required this.books,
    required this.followers,
    required this.following,
  });
}
