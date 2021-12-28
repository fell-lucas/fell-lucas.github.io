import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/app/app.dart';
import 'package:portfolio/app/cubit/theme_cubit.dart';

class ThemeSwitcherButton extends StatelessWidget {
  const ThemeSwitcherButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentThemeMode = context.select((ThemeCubit cubit) => cubit.state);
    return TextButton(
      child: FaIcon(
        currentThemeMode == ThemeMode.light ? FontAwesomeIcons.solidMoon : FontAwesomeIcons.solidSun,
        color: context.colorScheme.secondary,
      ),
      onPressed: () => context
          .read<ThemeCubit>()
          .changeTheme(currentThemeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light),
    );
  }
}
