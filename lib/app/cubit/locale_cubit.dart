import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super(LocaleInitial());

  void changeLocale(Locale locale) => emit(LocaleUpdated(locale: locale));
}
