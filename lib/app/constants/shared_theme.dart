import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const accentColor = Colors.deepOrange;

const appBarTheme = AppBarTheme(
  backgroundColor: Colors.transparent,
  elevation: 0,
);

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

final textTheme = TextTheme(
  headline1: GoogleFonts.firaCode(fontSize: 98, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  headline2: GoogleFonts.firaCode(fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headline3: GoogleFonts.firaCode(fontSize: 49, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.firaCode(fontSize: 35, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headline5: GoogleFonts.firaCode(fontSize: 24, fontWeight: FontWeight.w400),
  headline6: GoogleFonts.firaCode(fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.firaCode(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  subtitle2: GoogleFonts.firaCode(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: GoogleFonts.firaCode(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: GoogleFonts.firaCode(fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.firaCode(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.firaCode(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: GoogleFonts.firaCode(fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

const kBigScreenWidth = 1200;
const kMediumScreenWidth = 700;
const kAnimationDelayInitial = 250;
final kAnimationDelays = List.generate(20, (index) => Duration(milliseconds: kAnimationDelayInitial + index * 200));
