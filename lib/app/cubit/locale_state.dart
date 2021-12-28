part of 'locale_cubit.dart';

@immutable
abstract class LocaleState {}

class LocaleInitial extends LocaleState {}

class LocaleUpdated extends LocaleState {
  LocaleUpdated({required this.locale});
  final Locale locale;
}
