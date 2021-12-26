import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/app/app.dart';
import 'package:portfolio/app/cubit/locale_cubit.dart';
import 'package:portfolio/l10n/l10n.dart';

class LocaleDropdown extends StatelessWidget {
  const LocaleDropdown({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const locales = AppLocalizations.supportedLocales;
    final style = Theme.of(context).textTheme;
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        isDense: true,
        icon: FaIcon(
          FontAwesomeIcons.globeAmericas,
          color: context.colorScheme.secondary,
        ),
        value: context.select(
          (LocaleCubit cubit) => cubit.state is LocaleUpdated
              ? (cubit.state as LocaleUpdated).locale.languageCode
              : Localizations.localeOf(context).languageCode,
        ),
        items: [
          ...List.generate(
            locales.length,
            (index) => DropdownMenuItem<String>(
              alignment: Alignment.center,
              value: locales[index].languageCode,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Text(
                  locales[index].languageCode,
                  style: style.bodyText1!.copyWith(
                    color: context.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            growable: false,
          ),
        ],
        onChanged: (String? val) {
          context.read<LocaleCubit>().changeLocale(Locale(val!));
        },
      ),
    );
  }
}
