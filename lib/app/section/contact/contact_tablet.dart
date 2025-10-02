import 'package:flutter/material.dart';
import 'package:portfolio/core/extension/color_extension.dart';

import '../../../core/constants/app_consts.dart';
import '../../../core/constants/assets.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/utils/strings.dart';
import 'widgets/contact_email_card.dart';
import 'widgets/contact_footer_text.dart';
import 'widgets/contact_social_button.dart';

class ContactTablet extends StatelessWidget {
  const ContactTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
        top: AppConsts.pTabletVertical,
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
                textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              reachOutEn,
              style: AppTextTheme.contactSubtitle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30),
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
                    onTap: () {},
                  ),
                  ContactSocialButton(
                    image: Assets.linkedin,
                    onTap: () {},
                  ),
                  ContactSocialButton(
                    image: Assets.twitter,
                    onTap: () {},
                  ),
                  Expanded(
                    flex: 2,
                    child: ContactEmailCard(),),
                ],
              ),
            ),
          ),
          const SizedBox(height: 100),
          ContactFooterText(),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
