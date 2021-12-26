import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/app/app.dart';

class ThemeSwitcherButton extends StatelessWidget {
  const ThemeSwitcherButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeSwitcher(
      builder: (context) {
        final currentTheme = ThemeModelInheritedNotifier.of(context).theme;
        return TextButton(
          child: FaIcon(
            currentTheme.brightness == Brightness.light ? FontAwesomeIcons.solidMoon : FontAwesomeIcons.solidSun,
            color: context.colorScheme.secondary,
          ),
          onPressed: () => ThemeSwitcher.of(context).changeTheme(
            theme: currentTheme == lightThemeData ? darkThemeData : lightThemeData,
          ),
        );
      },
    );
  }
}
