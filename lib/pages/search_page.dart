import 'package:flutter/material.dart';
import 'package:infinibook_flutter/models/user.dart';
import 'package:infinibook_flutter/widgets/book_widget.dart';
import 'package:infinibook_flutter/widgets/profile_widget.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:infinibook_flutter/pages/others_profile_page.dart';
import '../globals.dart' as globals;

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        appBar: AppBar(title: const Text('Search'), actions: <Widget>[
      IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            showSearch(context: context, delegate: DataSearch());
          })
    ]));

    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => scaffold,
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, "");
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Center();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<User> temp = [];

    for (var i = 0; i < globals.dummyData.users.length; i++) {
      User user = globals.dummyData.users[i];
      for (var j = 0; j < globals.dummyData.users[i].booksList.length; j++) {
        temp.add(User(
          imagePath: user.imagePath,
          name: user.name,
          email: user.email,
          books: user.books,
          followers: user.followers,
          following: user.following,
          booksList: [
            user.booksList[j],
          ],
        ));
      }
    }

    final suggestionList = query.isEmpty
        ? temp
        : temp.where((p) => p.booksList[0].name.startsWith(query)).toList();

    //return ListView.builder(
    //    itemBuilder: (context, index) => ListTile(
    //        leading: BookWidget(
    //          imagePath: suggestionList[index].booksList[0].imagePath,
    //          onClicked: () {},
    //          height: 100,
    //          width: 100,
    //        ),
    //        title: RichText(
    //            text: TextSpan(text: suggestionList[index].booksList[0].name))),
    //    itemCount: suggestionList.length);

    return ListView.builder(
      itemCount: suggestionList.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              BookWidget(
                book: suggestionList[index].booksList[0],
                height: 200,
                width: 120,
              ),
              const Spacer(),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(width: 10),
                      ProfileWidget(
                        imagePath: suggestionList[index].imagePath,
                        onClicked: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => OthersProfilePage(
                                    user: suggestionList[index])),
                          );
                        },
                        size: 60,
                        noIcon: true,
                      ),
                      const SizedBox(width: 15),
                      Text(suggestionList[index].name),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          suggestionList[index].booksList[0].name,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
