import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio/app/app.dart';
import 'package:portfolio/app/cubit/locale_cubit.dart';
import 'package:portfolio/home/home.dart';
import 'package:portfolio/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      initTheme: isDarkNoContext ? darkThemeData : lightThemeData,
      duration: const Duration(milliseconds: 1000),
      child: MaterialApp(
        title: 'Lucas Fell',
        theme: lightThemeData,
        darkTheme: darkThemeData,
        locale: context.select(
          (LocaleCubit cubit) => cubit.state is LocaleUpdated ? (cubit.state as LocaleUpdated).locale : null,
        ),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        initialRoute: HomePage.route,
        routes: {
          HomePage.route: (context) => HomePage(),
        },
      ),
    );
  }
}
