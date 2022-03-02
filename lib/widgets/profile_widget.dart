import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;
  final double size;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    required this.onClicked,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final color = Theme.of(context).colorScheme.primary;
    final image = AssetImage(imagePath);

    return Center(
      child: ClipOval(
        child: Material(
          color: Colors.transparent,
          child: Ink.image(
            image: image,
            width: size,
            height: size,
            fit: BoxFit.cover,
            child: InkWell(onTap: onClicked),
          ),
        ),
      ),
    );
  }
}

class NumbersWidget extends StatelessWidget {
  final int books;
  final int followers;
  final int following;

  const NumbersWidget({
    Key? key,
    required this.books,
    required this.followers,
    required this.following,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(context, books.toString(), 'Books'),
          buildDivider(context),
          buildButton(context, followers.toString(), 'Followers'),
          buildDivider(context),
          buildButton(context, following.toString(), 'Following'),
        ],
      ),
    );
  }

  Widget buildButton(BuildContext context, String value, String text) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 4),
      onPressed: () {},
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(value,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          const SizedBox(height: 2),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget buildDivider(BuildContext context) {
    return Container(
      height: 24,
      child: const VerticalDivider(thickness: 1),
    );
  }
}
