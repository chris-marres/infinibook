import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:infinibook_flutter/models/user.dart';
import 'package:infinibook_flutter/widgets/book_widget.dart';
import 'package:infinibook_flutter/widgets/profile_widget.dart';
import '../globals.dart' as globals;

class OthersProfilePage extends StatefulWidget {
  final User user;
  const OthersProfilePage({Key? key, required this.user}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _OthersProfilePageState();
}

class _OthersProfilePageState extends State<OthersProfilePage> {
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
    User user = widget.user;

    //This user is from the suggestions list and has only 1 book
    //Find the original user from dummy data and display his profile page.
    for (var i = 0; i < globals.dummyData.users.length; ++i) {
      if (globals.dummyData.users[i].name == user.name) {
        user = globals.dummyData.users[i];
        break;
      }
    }

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
              onClicked: () {},
              noIcon: true,
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
