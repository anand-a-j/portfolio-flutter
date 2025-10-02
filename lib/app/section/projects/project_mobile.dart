import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/section/projects/model/project_model.dart';
import 'package:portfolio/app/utils/utils.dart';
import 'package:portfolio/core/constants/app_consts.dart' show AppConsts;
import '../../../core/utils/strings.dart';
import '../../../core/widgets/title_rich_text.dart';
import 'widgets/project_card_widget.dart';
import 'widgets/project_listview.dart';

class ProjectMobile extends StatelessWidget {
  const ProjectMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
   return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConsts.pMobileSideHorz,
        vertical: AppConsts.pMobileVertical,
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
          ProjectListView(),
        ],
      ),
    );
  }
}
