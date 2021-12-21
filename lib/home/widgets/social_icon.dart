import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key? key,
    required this.icon,
    this.url = '',
  }) : super(key: key);

  final IconData icon;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: IconButton(
        onPressed: () async => launch(url),
        icon: FaIcon(icon),
        splashRadius: 25,
      ),
    );
  }
}
