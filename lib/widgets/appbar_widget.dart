import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:infinibook_flutter/themes.dart';
import 'package:infinibook_flutter/pages/edit_profile_page.dart';

AppBar buildAppBar(BuildContext context) {
  final isDarkMode = Theme.of(context).brightness == Brightness.dark;
  final icon = CupertinoIcons.moon_stars;

  return AppBar(
    leading: BackButton(
      color: Theme.of(context).iconTheme.color,
      onPressed: () async {
        Navigator.pop(context, EditItems(name: '', email: ''));
      },
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      ThemeSwitcher(
        builder: (context) => IconButton(
          icon: Icon(
            icon,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () {
            final theme = isDarkMode ? MyThemes.lightTheme : MyThemes.darkTheme;

            final switcher = ThemeSwitcher.of(context);
            switcher.changeTheme(theme: theme);
          },
        ),
      ),
    ],
  );
}
