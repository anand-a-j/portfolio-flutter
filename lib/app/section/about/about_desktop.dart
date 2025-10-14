import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app_consts.dart';
import 'package:portfolio/core/constants/assets.dart';
import 'package:portfolio/core/extension/color_extension.dart';
import 'package:portfolio/core/extension/textstyle_extension.dart';
import 'package:portfolio/core/utils/functions.dart';
import 'package:portfolio/core/utils/strings.dart';

import '../../../core/utils/colors.dart';
import '../../../core/widgets/black_fade_container.dart';
import '../../../core/widgets/title_rich_text.dart';
import 'widgets/techstack_infinite_scroll.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppConsts.pWebVeritical,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 50),
          TitleRichText(
            titleOne: aboutEn,
            titleTwo: me,
          ),
          const SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConsts.pWebSideHorz,
            ),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 30,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: primaryContainer,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          width: 1,
                          color: primaryContainerBorder,
                        ),
                        image: DecorationImage(
                          image: AssetImage(Assets.aboutMe),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      aboutMeBody,
                      style: context.titleSmall.copyWith(
                        fontSize: desktopFontSize(
                          context: context,
                          maxFontSize: 20,
                          minFontSize: 16,
                        ),
                        color: context.brandColors.onPrimaryContainerDim,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 70),
          Stack(
            children: [
              InfiniteCardScroll(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.translate(
                    offset: Offset(-4, 0),
                    child: BlackFadeContainer(),
                  ),
                  Transform.translate(
                    offset: Offset(4, 0),
                    child: BlackFadeContainer(isLeftToRight: false),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
