import 'package:flutter/material.dart';
import 'package:portfolio/core/extension/color_extension.dart';

import '../../../core/constants/app_consts.dart';
import '../../../core/constants/assets.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/utils/strings.dart';
import 'widgets/contact_email_card.dart';
import 'widgets/contact_footer_text.dart';
import 'widgets/contact_social_button.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      margin: const EdgeInsets.only(
        left: AppConsts.pMobileSideHorz,
        right: AppConsts.pMobileSideHorz,
        top: AppConsts.pMobileVertical,
      ),
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 120),
            child: Divider(
              height: 1,
              thickness: 1,
              color: context.brandColors.primaryContainerBorder,
            ),
          ),
          Text(
            grabCoffeeEn,
            style: AppTextTheme.contactTitle.copyWith(fontSize: 42),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          Text(
            reachOutEn,
            style: AppTextTheme.contactSubtitle.copyWith(fontSize: 12),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ContactEmailCard(),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
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
                ],
              ),
            ),
          ),
          const SizedBox(height: 100),
          ContactFooterText(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
