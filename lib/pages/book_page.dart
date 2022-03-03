import 'package:flutter/material.dart';
import 'package:infinibook_flutter/models/book.dart';
import 'package:infinibook_flutter/widgets/book_widget.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';

class BookPage extends StatefulWidget {
  final Book book;
  bool dontFork;

  BookPage({Key? key, required this.book, this.dontFork = false})
      : super(key: key);

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text(widget.book.name),
          ),
          body: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: BookWidget(
                  book: widget.book,
                  height: 200,
                  width: 120,
                  inBookPage: widget.dontFork,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
