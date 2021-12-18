import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/l10n/l10n.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit()
      : super(
          AppLocalizations.supportedLocales.contains(Locale(Intl.getCurrentLocale().split('_')[0]))
              ? Locale(Intl.getCurrentLocale().split('_')[0])
              : const Locale('en'),
        );

  void changeLocale(Locale locale) => emit(locale);
}
