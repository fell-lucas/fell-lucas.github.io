import 'package:flutter/material.dart';
import 'package:portfolio/app/constants/constants.dart';

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

final colorScheme = ColorScheme.fromSwatch(
  backgroundColor: Colors.blueGrey.shade100,
  errorColor: Colors.red,
  primarySwatch: Colors.blueGrey,
  accentColor: accentColor,
  primaryColorDark: Colors.blueGrey.shade700,
  cardColor: accentColor,
);
