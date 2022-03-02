import 'package:flutter/material.dart';
import 'package:infinibook_flutter/pages/profile_page.dart';
import 'package:infinibook_flutter/pages/search_page.dart';
import 'package:infinibook_flutter/pages/messages_page.dart';

void main() => runApp(const Infinibook());

class Infinibook extends StatelessWidget {
  const Infinibook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Infinibook',
      theme: ThemeData(
        dividerColor: Colors.black,
        primarySwatch: Colors.deepPurple,
      ),
      home: const InfinibookMainPage(),
    );
  }
}

class InfinibookMainPage extends StatefulWidget {
  const InfinibookMainPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InfinibookMainPageState();
}

class _InfinibookMainPageState extends State<InfinibookMainPage> {
  int currentIndex = 0;
  final pages = [
    const ProfilePage(),
    const SearchPage(),
    const MessagesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        //type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
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
  }
}
