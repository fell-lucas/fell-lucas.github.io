import 'package:flutter/material.dart';
import 'package:portfolio/app/constants/constants.dart';

final darkThemeData = lightThemeData.copyWith(
  scaffoldBackgroundColor: darkBgColor,
  colorScheme: darkColorScheme,
  appBarTheme: appBarTheme,
  textTheme: darkTextTheme,
  iconTheme: iconTheme,
  outlinedButtonTheme: outlinedButtonTheme,
  canvasColor: Colors.blueGrey.shade800,
  brightness: Brightness.dark,
  dividerTheme: DividerThemeData(
    color: Colors.blueGrey.shade100,
    thickness: 1,
  ),
  drawerTheme: DrawerThemeData(backgroundColor: Colors.blueGrey.shade900),
  // splashColor: Colors.blueGrey.shade900,
);

final darkColorScheme = ColorScheme.fromSwatch(
  backgroundColor: darkBgColor,
  errorColor: Colors.red,
  primarySwatch: MaterialColor(Colors.blueGrey.shade200.value, const {}),
  accentColor: accentColor,
  primaryColorDark: darkBgColor,
  cardColor: accentColor,
  brightness: Brightness.dark,
);

final darkBgColor = Colors.blueGrey.shade900;
final darkTextColor = Colors.blueGrey.shade200;

final darkTextTheme = textTheme.merge(
  TextTheme(
    headline1: TextStyle(color: darkTextColor),
    headline2: TextStyle(color: darkTextColor),
    headline3: TextStyle(color: darkTextColor),
    headline4: TextStyle(color: darkTextColor),
    headline5: TextStyle(color: darkTextColor),
    headline6: TextStyle(color: darkTextColor),
    subtitle1: TextStyle(color: darkTextColor),
    subtitle2: TextStyle(color: darkTextColor),
    bodyText1: TextStyle(color: darkTextColor),
    bodyText2: TextStyle(color: darkTextColor),
    button: TextStyle(color: darkTextColor),
    caption: TextStyle(color: darkTextColor),
    overline: TextStyle(color: darkTextColor),
  ),
);
