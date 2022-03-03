import 'package:flutter/material.dart';
import 'package:infinibook_flutter/models/user.dart';
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
  User user = globals.dummyData.users[globals.loged_in_user];
  String tempName = globals.dummyData.users[globals.loged_in_user].name;
  String tempEmail = globals.dummyData.users[globals.loged_in_user].email;

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
                  onChanged: (name) {
                    tempName = name;
                  },
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Email',
                  text: user.email,
                  onChanged: (email) {
                    tempEmail = email;
                  },
                ),
                const SizedBox(height: 24),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      textStyle: const TextStyle(fontSize: 20),
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                    ),
                    onPressed: () {
                      Navigator.pop(
                        context,
                        EditItems(
                          name: tempName,
                          email: tempEmail,
                        ),
                      );
                    },
                    child: const Text('Save'),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

class EditItems {
  String name = '';
  String email = '';

  EditItems({
    required this.name,
    required this.email,
  });
}
