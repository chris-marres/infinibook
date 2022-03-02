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
  const NumbersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buildButton(context, '8', 'Books'),
        buildDivider(),
        buildButton(context, '50', 'Followers'),
        buildDivider(),
        buildButton(context, '150', 'Following'),
      ],
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

  Widget buildDivider() => Container(
        height: 24,
        child: const VerticalDivider(thickness: 1),
      );
}
