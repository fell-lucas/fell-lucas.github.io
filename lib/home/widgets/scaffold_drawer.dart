import 'package:flutter/material.dart';
import 'package:portfolio/app/app.dart';
import 'package:portfolio/home/widgets/widgets.dart';
import 'package:portfolio/l10n/l10n.dart';

class ScaffoldDrawer extends StatelessWidget {
  const ScaffoldDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final drawerButtons = [
      l10n.about,
      l10n.education,
      l10n.work,
      l10n.projects,
    ];
    return Drawer(
      child: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          children: [
            ...List.generate(
              drawerButtons.length,
              (index) => ListTile(
                title: Center(child: LeadingText(leading: '0${index + 1}. ', text: drawerButtons[index])),
                onTap: () {},
              ),
              growable: false,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(color: context.colorScheme.secondary),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.download_rounded),
                  const SizedBox(width: 8),
                  Text(context.l10n.resume),
                ],
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
