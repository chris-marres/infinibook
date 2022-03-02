import 'package:flutter/material.dart';
import 'package:infinibook_flutter/models/user.dart';
import 'package:infinibook_flutter/models/dummy_data.dart';
import 'package:infinibook_flutter/widgets/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    User user = DummyData.users[1];

    return Scaffold(
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
              onClicked: () async {},
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
  }
}
