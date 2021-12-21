import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

final isDarkNoContext = SchedulerBinding.instance!.window.platformBrightness == Brightness.dark;

extension DarkThemeX on BuildContext {
  bool get isDark => MediaQuery.of(this).platformBrightness == Brightness.dark;
}

extension ColorSchemeX on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
