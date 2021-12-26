import 'package:flutter/material.dart';
import 'package:portfolio/app/app.dart';
import 'package:portfolio/l10n/l10n.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.download_rounded,
            color: context.colorScheme.secondary,
          ),
          const SizedBox(width: 8),
          Text(context.l10n.resume),
        ],
      ),
    );
  }
}
