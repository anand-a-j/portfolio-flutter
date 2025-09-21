import 'package:flutter/material.dart';
import 'package:portfolio/app/section/projects/model/project_model.dart';
import 'package:portfolio/app/utils/utils.dart';
import 'widgets/project_card_widget.dart';

class ProjectDesktop extends StatelessWidget {
  const ProjectDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 150, vertical: 70),
      width: width,
      child: ListView(
        shrinkWrap: true,
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Projects",
              style: heading2,
            ),
          ),
          SizedBox(height: 70),
          GridView.builder(
            shrinkWrap: true,
            itemCount: projects.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: width > 1350 ? 4 : 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: width > 1350 ? 0.75 : 0.80),
            itemBuilder: (context, index) {
              return ProjectCardWidget(index: index);
            },
          )
        ],
      ),
    );
  }
}
