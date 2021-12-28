import 'package:flutter/material.dart';

extension ColorSchemeX on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}

extension ScreenX on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}
