import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app/cubit/locale_cubit.dart';
import 'package:portfolio/l10n/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const route = '/';

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
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          ...List.generate(
            appBarButtons.length,
            (index) => LeadingTextButton(leading: '0${index + 1}. ', text: appBarButtons[index]),
            growable: false,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: OutlinedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.download_rounded),
                  const SizedBox(width: 8),
                  Text(l10n.resume),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: context.select((LocaleCubit cubit) => cubit.state.languageCode),
                items: [
                  ...List.generate(
                    locales.length,
                    (index) => DropdownMenuItem<String>(
                      value: locales[index].languageCode,
                      child: Text(
                        locales[index].languageCode,
                        style: const TextStyle(color: Colors.deepOrange),
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
          ),
        ],
      ),
    );
  }
}

class LeadingTextButton extends StatelessWidget {
  const LeadingTextButton({
    Key? key,
    required this.leading,
    required this.text,
  }) : super(key: key);

  final String leading;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: TextButton(
        onPressed: () {},
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(text: leading, style: const TextStyle(color: Colors.deepOrange)),
              TextSpan(text: text),
            ],
          ),
        ),
      ),
    );
  }
}
