import 'package:flutter/material.dart';
import 'package:infinibook_flutter/pages/book_page.dart';
import 'package:infinibook_flutter/models/book.dart';

class BookWidget extends StatelessWidget {
  final Book book;
  final double width;
  final double height;
  bool inBookPage;

  BookWidget({
    Key? key,
    required this.book,
    required this.height,
    required this.width,
    this.inBookPage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: AssetImage(book.imagePath),
          width: width,
          height: height,
          fit: BoxFit.cover,
          child: InkWell(
            onTap: () {
              if (!inBookPage) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => BookPage(
                            book: book,
                            dontFork: true,
                          )),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
