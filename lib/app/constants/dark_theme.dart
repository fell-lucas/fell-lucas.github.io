import 'package:flutter/material.dart';
import 'package:portfolio/app/app.dart';
import 'package:portfolio/app/constants/shared_theme.dart';

final darkThemeData = lightThemeData.copyWith(
  scaffoldBackgroundColor: Colors.blueGrey.shade700,
  colorScheme: darkColorScheme,
  appBarTheme: appBarTheme,
  textTheme: textTheme.apply(bodyColor: Colors.white),
  iconTheme: iconTheme,
  outlinedButtonTheme: outlinedButtonTheme,
  canvasColor: Colors.blueGrey,
  brightness: Brightness.dark,
);

final darkColorScheme = ColorScheme.fromSwatch(
  backgroundColor: Colors.blueGrey.shade700,
  errorColor: Colors.red,
  primarySwatch: MaterialColor(Colors.blueGrey.shade100.value, {}),
  accentColor: accentColor,
  primaryColorDark: Colors.blueGrey.shade700,
  cardColor: accentColor,
  brightness: Brightness.dark,
);
