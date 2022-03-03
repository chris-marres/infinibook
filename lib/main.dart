import 'package:flutter/material.dart';
import 'package:infinibook_flutter/pages/profile_page.dart';
import 'package:infinibook_flutter/pages/search_page.dart';
import 'package:infinibook_flutter/pages/messages_page.dart';
import 'package:infinibook_flutter/pages/edit_profile_page.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:infinibook_flutter/themes.dart';
import '../globals.dart' as globals;

void main() => runApp(const Infinibook());

class Infinibook extends StatelessWidget {
  const Infinibook({Key? key}) : super(key: key);
  final title = 'Welcome to Infinibook';

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      initTheme: MyThemes.lightTheme,
      child: Builder(
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Theme.of(context),
          title: title,
          home: const InfinibookMainPage(),
        ),
      ),
    );
  }
}

class InfinibookMainPage extends StatefulWidget {
  const InfinibookMainPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InfinibookMainPageState();
}

class _InfinibookMainPageState extends State<InfinibookMainPage> {
  //int currentIndex = globals.pageIndex;
  final pages = [
    //const EditProfilePage(),
    const ProfilePage(),
    const SearchPage(),
    const MessagesPage(),
    //const EditProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      body: IndexedStack(
        index: globals.pageIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        //type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        currentIndex: globals.pageIndex,
        onTap: (index) => setState(() => globals.pageIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_rounded),
            label: 'Messages',
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
