class User {
  final String imagePath;
  final String name;
  final String email;

  const User({
    required this.imagePath,
    required this.name,
    required this.email,
  });
}

class UserPreferences {
  static const myUser = User(
      imagePath: 'assets/images/chris_500.jpeg',
      name: 'Chris Marres',
      email: 'xristos.marres@gmail.com');
}
