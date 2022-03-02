import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:infinibook_flutter/models/user.dart';
import 'package:infinibook_flutter/models/dummy_data.dart';
import 'package:infinibook_flutter/widgets/profile_widget.dart';
import 'package:infinibook_flutter/pages/edit_profile_page.dart';
import '../globals.dart' as globals;

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    User user = globals.dummyData.users[1];

    var scaffold = Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(22),
            child: ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EditProfilePage()),
                );
              },
              size: 100,
            ),
          ),
          NumbersWidget(
            books: user.books,
            followers: user.followers,
            following: user.following,
          ),
        ],
      ),
    );

    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => scaffold,
      ),
    );
  }
}
