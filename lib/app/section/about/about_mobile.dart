import 'package:flutter/material.dart';
import 'package:portfolio/core/extension/color_extension.dart';
import 'package:portfolio/core/extension/textstyle_extension.dart';
import 'package:portfolio/core/utils/functions.dart';

import '../../../core/constants/app_consts.dart';
import '../../../core/utils/strings.dart';
import '../../../core/widgets/title_rich_text.dart';
import '../skills/skills_desktop.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppConsts.pMobileSideHorz,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          TitleRichText(
            titleOne: aboutEn,
            titleTwo: me,
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConsts.pMobileSideHorz,
            ),
            child: Text(
              aboutMeBody,
              style: context.titleSmall.copyWith(
                fontSize: mobileFontSize(
                  context: context,
                  maxFontSize: 18,
                  minFontSize: 14,
                ),
                color: context.brandColors.onPrimaryContainerDim,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(height: 40),
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
