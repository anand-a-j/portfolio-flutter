import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app_consts.dart';
import 'package:portfolio/core/utils/strings.dart';
import '../../../core/widgets/title_rich_text.dart';
import 'widgets/project_gridview.dart';

class ProjectDesktop extends StatelessWidget {
  const ProjectDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConsts.pWebSideHorz,
        vertical: AppConsts.pWebVeritical,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 50),
          TitleRichText(
            titleOne: myEn,
            titleTwo: projectsEn,
          ),
          const SizedBox(height: 70),
          ProjectGridView(),
        ],
      ),
    );
  }
}
