import 'package:flutter/material.dart';
import 'package:portfolio/core/extension/color_extension.dart';
import 'package:portfolio/core/extension/textstyle_extension.dart';

import '../../../core/constants/app_consts.dart';
import '../../../core/utils/functions.dart';
import '../../../core/utils/strings.dart';
import '../../../core/widgets/title_rich_text.dart';
import '../skills/skills_desktop.dart';

class AboutTablet extends StatelessWidget {
  const AboutTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppConsts.pTabletVertical,
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
              horizontal: AppConsts.pTabletSideHorz,
            ),
            child: Text(
              aboutMeBody,
              style: context.titleSmall.copyWith(
                fontSize: tabletFontSize(
                  context: context,
                  maxFontSize: 20,
                  minFontSize: 14,
                ),
                color: context.brandColors.onPrimaryContainerDim,
              ),
              textAlign: TextAlign.justify,
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