import 'package:flutter/material.dart';
import 'package:portfolio/app/section/home/widgets/home_button.dart';
import 'package:portfolio/core/extension/color_extension.dart';
import 'package:portfolio/core/extension/textstyle_extension.dart';
import 'package:portfolio/core/utils/functions.dart';

import '../../../core/constants/app_consts.dart';
import '../../../core/constants/assets.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/utils/strings.dart';

import '../../../core/widgets/animated_gradient_text.dart';
import 'widgets/star_background.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.fill(
          child: StarField(baseStars: 150, twinkle: true),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppConsts.pMobileSideHorz,
            vertical: AppConsts.pMobileVertical,
          ),
          child: SizedBox(
            height: height,
            width: width,
            child: Center(
              child: Column(
                spacing: AppConsts.pLarge,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(Assets.me),
                    radius: 50,
                  ),
                  Text(
                    hello,
                    style: context.titleMedium,
                  ),
                  HomeHeroGridientText(
                    title: heroTitle,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      heroSubtitleMobile,
                      textAlign: TextAlign.center,
                      style: AppTextTheme.heroSubtitle.copyWith(
                        fontSize: mobileFontSize(context: context),
                        color: context.brandColors.onPrimaryContainerDim,
                      ),
                    ),
                  ),
                  Column(
                    spacing: AppConsts.pMedium,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      HomeButton(
                        title: aboutMe,
                        onTap: () {},
                      ),
                      HomeButton(
                        title: letsConnect,
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
