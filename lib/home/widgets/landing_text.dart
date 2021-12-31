import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/app.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingText extends StatelessWidget {
  const LandingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final style = Theme.of(context).textTheme;
    final paragraphStyle = style.bodyText1!.copyWith(
      color: context.colorScheme.primary.withOpacity(0.5),
      height: 1.5,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.intro_hiim, style: style.headline6!.copyWith(color: context.colorScheme.secondary)),
        Text(l10n.intro_name, style: style.headline3),
        AutoSizeText(
          l10n.intro_sub,
          style: style.headline3!.copyWith(color: context.colorScheme.primary.withOpacity(0.6)),
          maxLines: 2,
        ),
        SizedBox(
          width: 450,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: l10n.intro_desc, style: paragraphStyle),
                TextSpan(
                  text: l10n.intro_z_name1,
                  style: style.bodyText1!.copyWith(color: context.colorScheme.secondary, fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()..onTap = () => launch('$kZallpy${l10n.intro_z_link1}'),
                ),
                TextSpan(
                  text: l10n.intro_z_name2,
                  style: style.bodyText1!.copyWith(color: context.colorScheme.secondary.withOpacity(0.7)),
                  recognizer: TapGestureRecognizer()..onTap = () => launch('$kZallpy${l10n.intro_z_link2}'),
                ),
                TextSpan(text: '.', style: paragraphStyle),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
