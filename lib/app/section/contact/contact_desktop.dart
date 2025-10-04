import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app_consts.dart';
import 'package:portfolio/core/extension/color_extension.dart';
import 'package:portfolio/core/theme/app_text_theme.dart';
import 'package:portfolio/core/utils/strings.dart';

import '../../../core/constants/app_links.dart';
import '../../../core/constants/assets.dart';
import '../../../core/utils/functions.dart';
import '../../../core/utils/snackbar.dart';
import 'widgets/contact_email_card.dart';
import 'widgets/contact_footer_text.dart';
import 'widgets/contact_social_button.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
        top: AppConsts.pWebVeritical,
      ),
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 150),
            child: Divider(
              height: 1,
              thickness: 1,
              color: context.brandColors.primaryContainerBorder,
            ),
          ),
          Text(
            grabCoffeeEn,
            style: AppTextTheme.contactTitle,
          ),
          const SizedBox(height: 5),
          Text(
            reachOutEn,
            style: AppTextTheme.contactSubtitle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: size.width > 1024 ? 40 : 15),
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 600,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 10,
                children: [
                  ContactSocialButton(
                    image: Assets.github,
                    onTap: () async {
                      final success = await openUrlLink(AppLinks.github);

                      if (!success && context.mounted) {
                        showAppSnackBar(context, linkOpenErrorEn);
                      }
                    },
                  ),
                  ContactSocialButton(
                    image: Assets.linkedin,
                    onTap: () async {
                      final success = await openUrlLink(AppLinks.linkedin);

                      if (!success && context.mounted) {
                        showAppSnackBar(context, linkOpenErrorEn);
                      }
                    },
                  ),
                  ContactSocialButton(
                    image: Assets.twitter,
                    onTap: () async {
                      final success = await openUrlLink(AppLinks.twitter);

                      if (!success && context.mounted) {
                        showAppSnackBar(context, linkOpenErrorEn);
                      }
                    },
                  ),
                  Expanded(
                    flex: 2,
                    child: ContactEmailCard(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 100),
          ContactFooterText(),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
