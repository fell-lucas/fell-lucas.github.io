import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app/app.dart';
import 'package:portfolio/app/cubit/locale_cubit.dart';
import 'package:portfolio/home/widgets/widgets.dart';
import 'package:portfolio/l10n/l10n.dart';

class FakeAppBar extends StatelessWidget {
  const FakeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const locales = AppLocalizations.supportedLocales;
    final l10n = context.l10n;
    final appBarButtons = [
      l10n.about,
      l10n.education,
      l10n.work,
      l10n.projects,
    ];
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Wrap(
        clipBehavior: Clip.hardEdge,
        alignment: WrapAlignment.center,
        spacing: 10,
        runSpacing: 10,
        children: [
          ...List.generate(
            appBarButtons.length,
            (index) => LeadingTextButton(leading: '0${index + 1}. ', text: appBarButtons[index]),
            growable: false,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.download_rounded),
                const SizedBox(width: 8),
                Text(l10n.resume),
              ],
            ),
          ),
          DropdownButtonHideUnderline(
            child: DropdownButton(
              isDense: true,
              icon: const Visibility(
                visible: false,
                child: Icon(Icons.arrow_downward),
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
                        style: TextStyle(color: context.colorScheme.secondary),
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
          ),
        ],
      ),
    );
  }
}
