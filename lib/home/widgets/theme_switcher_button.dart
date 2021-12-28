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
    final isDark = context.select((ThemeCubit cubit) => cubit.state) == ThemeMode.dark ||
        Theme.of(context).brightness == Brightness.dark;
    return TextButton(
      child: FaIcon(
        isDark ? FontAwesomeIcons.solidSun : FontAwesomeIcons.solidMoon,
        color: context.colorScheme.secondary,
      ),
      onPressed: () => context.read<ThemeCubit>().changeTheme(isDark ? ThemeMode.light : ThemeMode.dark),
    );
  }
}
