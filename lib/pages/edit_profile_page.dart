import 'package:flutter/material.dart';
import 'package:infinibook_flutter/models/user.dart';
import 'package:infinibook_flutter/models/dummy_data.dart';
import 'package:infinibook_flutter/widgets/profile_widget.dart';
import 'package:infinibook_flutter/widgets/appbar_widget.dart';
import 'package:infinibook_flutter/widgets/textfield_widget.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import '../globals.dart' as globals;

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = globals.dummyData.users[1];

  @override
  Widget build(BuildContext context) => ThemeSwitchingArea(
        child: Builder(
          builder: (context) => Scaffold(
            appBar: buildAppBar(context),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              physics: const BouncingScrollPhysics(),
              children: [
                ProfileWidget(
                  imagePath: user.imagePath,
                  size: 100,
                  isEdit: true,
                  onClicked: () async {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Username',
                  text: user.name,
                  onChanged: (name) {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Email',
                  text: user.email,
                  onChanged: (email) {},
                ),
              ],
            ),
          ),
        ),
      );
}
