import 'package:flutter/material.dart';
import 'package:portfolio/app/app.dart';

extension ColorSchemeX on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}

extension ScreenX on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
  bool get isSmallScreen => MediaQuery.of(this).size.width < kMediumScreenWidth;
  bool get isMediumOrBigScreen => !isSmallScreen;
}
