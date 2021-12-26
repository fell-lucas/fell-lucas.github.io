import 'package:flutter/material.dart';

import 'package:portfolio/app/app.dart';
import 'package:portfolio/home/widgets/widgets.dart';
import 'package:portfolio/l10n/l10n.dart';

class FakeAppBar extends StatelessWidget {
  const FakeAppBar({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final l10n = context.l10n;
    final appBarButtons = [
      l10n.about,
      l10n.education,
      l10n.work,
      l10n.projects,
    ];
    final bigScreenChildren = [
      ...List.generate(
        appBarButtons.length,
        (index) => TextButton(
          onPressed: () {},
          child: LeadingText(leading: '0${index + 1}. ', text: appBarButtons[index]),
        ),
        growable: false,
      ),
      const ResumeButton(),
      const LocaleDropdown()
    ];
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Wrap(
        clipBehavior: Clip.hardEdge,
        alignment: WrapAlignment.center,
        spacing: 10,
        runSpacing: 10,
        children: screenWidth >= kMediumScreenWidth ? bigScreenChildren : [],
      ),
    );
  }
}
