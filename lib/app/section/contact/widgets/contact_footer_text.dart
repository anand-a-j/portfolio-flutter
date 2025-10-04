import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';
import 'package:portfolio/core/constants/app_links.dart';
import 'package:portfolio/core/extension/color_extension.dart';
import 'package:portfolio/core/extension/textstyle_extension.dart';
import 'package:portfolio/core/utils/functions.dart';

import '../../../../core/utils/snackbar.dart';
import '../../../../core/utils/strings.dart';

class ContactFooterText extends StatelessWidget {
  const ContactFooterText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: context.bodyMedium.copyWith(
          color: context.brandColors.onPrimaryContainerDim,
        ),
        children: [
          const TextSpan(text: "Crafted with "),
          TextSpan(
            text: "Flutter ",
            style: context.bodyMedium.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const TextSpan(text: "by "),
          TextSpan(
            text: "Anand",
            style: context.bodyMedium.copyWith(
              color: context.secondary,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                final success = await openUrlLink(AppLinks.github);

                if (!success && context.mounted) {
                  showAppSnackBar(context, linkOpenErrorEn);
                }
              },
          ),
        ],
      ),
    );
  }
}
