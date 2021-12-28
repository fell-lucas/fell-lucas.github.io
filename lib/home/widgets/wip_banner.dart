import 'package:flutter/material.dart';
import 'package:portfolio/app/app.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class WIPBanner extends StatelessWidget {
  const WIPBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => launch(kRepo),
        child: Container(
          color: context.colorScheme.secondary.withOpacity(0.2),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Center(
              child: Text(
                context.l10n.wip,
                style: TextStyle(
                  color: context.colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
