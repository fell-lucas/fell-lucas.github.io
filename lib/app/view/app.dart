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
    return MaterialApp(
      title: 'Lucas Fell',
      theme: lightThemeData,
      darkTheme: darkThemeData,
      locale: context.select(
        (LocaleCubit cubit) => cubit.state,
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => const HomePage(),
      },
    );
  }
}
