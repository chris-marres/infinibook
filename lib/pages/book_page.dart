import 'package:flutter/material.dart';
import 'package:infinibook_flutter/models/book.dart';
import 'package:infinibook_flutter/widgets/book_widget.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:infinibook_flutter/widgets/textfield_widget.dart';

class BookPage extends StatefulWidget {
  final Book book;
  final bool dontFork;

  const BookPage({Key? key, required this.book, this.dontFork = false})
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
            padding: const EdgeInsets.symmetric(horizontal: 32),
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
              TextFieldWidget(
                disable: true,
                label: 'Title',
                text: widget.book.name,
                onChanged: (value) {},
              ),
              const SizedBox(height: 8),
              TextFieldWidget(
                disable: true,
                label: 'Author',
                text: widget.book.author,
                onChanged: (value) {},
              ),
              const SizedBox(height: 8),
              TextFieldWidget(
                disable: true,
                label: 'Genres',
                text: widget.book.genres[0],
                onChanged: (value) {},
              ),
              const SizedBox(height: 8),
              TextFieldWidget(
                disable: true,
                label: 'Language',
                text: widget.book.language,
                onChanged: (value) {},
              ),
              const SizedBox(height: 8),
              TextFieldWidget(
                disable: true,
                label: 'Pages',
                text: widget.book.pages.toString(),
                onChanged: (value) {},
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
