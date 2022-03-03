import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:infinibook_flutter/models/user.dart';
import 'package:infinibook_flutter/widgets/book_widget.dart';
import 'package:infinibook_flutter/widgets/profile_widget.dart';
import 'package:infinibook_flutter/pages/edit_profile_page.dart';
import '../globals.dart' as globals;

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget showBooks(BuildContext context, User user) {
    var spacer = const Spacer();

    var rowNumber = (user.booksList.length ~/ 3) + 1;
    var remaining = (user.booksList.length % 3);
    int index = 0;
    List<Widget> rows = [];
    for (var i = 0; i < rowNumber; i++) {
      List<Widget> row = [];
      if (i < rowNumber - 1) {
        row.add(spacer);
        for (var j = 0; j < 3; j++) {
          row.add(
              BookWidget(book: user.booksList[index], height: 200, width: 120));
          row.add(spacer);
          index++;
        }
      } else {
        row.add(spacer);
        for (var j = 0; j < remaining; j++) {
          row.add(
              BookWidget(book: user.booksList[index], height: 200, width: 120));
          row.add(spacer);
          index++;
        }
      }
      rows.add(Row(children: row));
      rows.add(const SizedBox(height: 24));
    }

    return Column(children: rows);
  }

  @override
  Widget build(BuildContext context) {
    User user = globals.dummyData.users[globals.loged_in_user];

    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(22),
            child: ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () async {
                EditItems temp = await Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const EditProfilePage()),
                );
                setState(() {
                  if (temp.name != '' || temp.email != '') {
                    globals.dummyData.users[globals.loged_in_user].name =
                        temp.name;
                    globals.dummyData.users[globals.loged_in_user].email =
                        temp.email;
                  }
                });
              },
              size: 100,
            ),
          ),
          NumbersWidget(
            books: user.books,
            followers: user.followers,
            following: user.following,
          ),
          const SizedBox(height: 24),
          showBooks(context, user),
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
