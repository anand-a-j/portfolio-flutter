import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app_consts.dart';

import '../model/project_model.dart';
import 'project_card_widget.dart';

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    int crossAxisCount;
    double childAspectRatio;

    if (size.width > 1700) {
      crossAxisCount = 3;
      final availableWidth = size.width - AppConsts.pWebSideHorz;
      final itemWidth = availableWidth / crossAxisCount;
      childAspectRatio = itemWidth / 567;
    } else if (size.width > 1000) {
      crossAxisCount = 2;
      final availableWidth = size.width - AppConsts.pWebSideHorz;
      final itemWidth = availableWidth / crossAxisCount;
      childAspectRatio = itemWidth / 578; 
    } else {
      crossAxisCount = 2;
      final availableWidth = size.width - AppConsts.pWebSideHorz;
      final itemWidth = availableWidth / crossAxisCount;
      childAspectRatio = itemWidth / 608;
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        return ProjectCardWidget(index: index);
      },
    );
  }
}
