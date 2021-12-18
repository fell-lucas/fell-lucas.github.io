import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/l10n/l10n.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit()
      : super(
          AppLocalizations.supportedLocales.contains(Locale(Intl.getCurrentLocale()))
              ? Locale(Intl.getCurrentLocale())
              : const Locale('en'),
        );

  void changeLocale(Locale locale) => emit(locale);
}
