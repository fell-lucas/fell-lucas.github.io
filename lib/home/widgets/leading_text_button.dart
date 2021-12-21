import 'package:flutter/material.dart';
import 'package:portfolio/helpers/helpers.dart';

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
              TextSpan(text: leading, style: TextStyle(color: context.colorScheme.secondary)),
              TextSpan(text: text),
            ],
          ),
        ),
      ),
    );
  }
}
