import 'package:flutter/material.dart';
import 'package:portfolio/app/constants/shared_theme.dart';

final lightThemeData = ThemeData(
  scaffoldBackgroundColor: Colors.blueGrey.shade100,
  colorScheme: colorScheme,
  appBarTheme: appBarTheme,
  textTheme: textTheme,
  iconTheme: iconTheme,
  outlinedButtonTheme: outlinedButtonTheme,
  canvasColor: Colors.blueGrey.shade50,
  brightness: Brightness.light,
);

const appBarTheme = AppBarTheme(
  backgroundColor: Colors.transparent,
  elevation: 0,
);

final colorScheme = ColorScheme.fromSwatch(
  backgroundColor: Colors.blueGrey.shade100,
  errorColor: Colors.red,
  primarySwatch: Colors.blueGrey,
  accentColor: accentColor,
  primaryColorDark: Colors.blueGrey.shade700,
  cardColor: accentColor,
);

const accentColor = Colors.deepOrange;

const iconTheme = IconThemeData(
  size: 18,
  color: accentColor,
);

final outlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    side: const BorderSide(
      color: accentColor,
    ),
  ),
);
