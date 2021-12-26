import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/app/app.dart';
import 'package:portfolio/home/widgets/widgets.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class SideColumn extends StatelessWidget {
  const SideColumn({
    Key? key,
    required this.left,
  }) : super(key: key);

  final bool left;

  @override
  Widget build(BuildContext context) {
    final emailLink = 'mailto:$kEmail?${context.l10n.email}';
    final children = left
        ? [
            const SocialIcon(icon: FontAwesomeIcons.github, url: kGithub),
            const SocialIcon(icon: FontAwesomeIcons.twitter, url: kTwitter),
            const SocialIcon(icon: FontAwesomeIcons.linkedinIn, url: kLinkedIn),
            const SocialIcon(icon: FontAwesomeIcons.googlePlay, url: kPlayStore),
            SocialIcon(icon: FontAwesomeIcons.solidEnvelope, url: emailLink),
          ]
        : [
            RotatedBox(
              quarterTurns: 1,
              child: Text.rich(
                TextSpan(
                  text: kEmail,
                  recognizer: TapGestureRecognizer()..onTap = () => launch(emailLink),
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: context.colorScheme.secondary,
                        letterSpacing: 1.5,
                      ),
                ),
              ),
            )
          ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ...children,
        const SizedBox(height: 30),
        const SizedBox(
          height: 125,
          width: 100,
          child: VerticalDivider(),
        )
      ],
    );
  }
}
