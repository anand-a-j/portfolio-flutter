import 'package:flutter/material.dart';
import 'package:portfolio/app/section/home/widgets/home_button.dart';
import 'package:portfolio/core/constants/app_consts.dart';
import 'package:portfolio/core/constants/assets.dart';
import 'package:portfolio/core/extension/textstyle_extension.dart';
import 'package:portfolio/core/theme/app_text_theme.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/functions.dart';
import 'package:portfolio/core/utils/strings.dart';

import '../../../core/widgets/animated_gradient_text.dart';
import 'widgets/star_background.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.fill(
          child: StarField(baseStars: 120, twinkle: true),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppConsts.pWebSideHorz,
            vertical: 50,
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
                  SizedBox(
                    width: 860,
                    child: Text(
                      heroSubtitle,
                      textAlign: TextAlign.center,
                      style: AppTextTheme.heroSubtitle.copyWith(
                        fontSize: desktopFontSize(context: context),
                        color: onPrimaryContainerDim,
                      ),
                    ),
                  ),
                  Row(
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
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
