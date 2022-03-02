import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;
  final double size;
  final bool isEdit;
  final bool noIcon;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    required this.onClicked,
    required this.size,
    this.isEdit = false,
    this.noIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          buildImage(context, imagePath, size),
          !noIcon ? buildEditIcon(color) : const SizedBox.shrink(),
        ],
      ),
    );
  }

  //!!!! This widget need to be inside a Center Widget to work properly !!!!
  Widget buildImage(BuildContext context, String imagePath, double size) {
    final image = AssetImage(imagePath);

    return ClipOval(
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
    );
  }

  Widget buildEditIcon(Color color) {
    return Positioned(
      bottom: 0,
      right: 4,
      child: buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: color,
          all: 6,
          child: Icon(
            isEdit ? Icons.add_a_photo : Icons.edit,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
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
      height: 30,
      child: const VerticalDivider(thickness: 1),
    );
  }
}
