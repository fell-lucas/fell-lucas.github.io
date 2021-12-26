import 'package:flutter/material.dart';
import 'package:portfolio/app/app.dart';

class LeadingText extends StatelessWidget {
  const LeadingText({
    Key? key,
    required this.leading,
    required this.text,
  }) : super(key: key);

  final String leading;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: leading, style: TextStyle(color: context.colorScheme.secondary)),
          TextSpan(text: text),
        ],
      ),
    );
  }
}
