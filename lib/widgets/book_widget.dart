import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;
  final double width;
  final double height;

  const BookWidget({
    Key? key,
    required this.imagePath,
    required this.onClicked,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: AssetImage(imagePath),
          width: width,
          height: height,
          fit: BoxFit.cover,
          child: InkWell(
            onTap: onClicked,
          ),
        ),
      ),
    );
  }
}
