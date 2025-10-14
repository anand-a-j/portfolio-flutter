import 'package:flutter/material.dart';
import 'package:portfolio/app/section/home/widgets/home_button.dart';
import 'package:portfolio/app/section/projects/model/project_model.dart';
import 'package:portfolio/app/section/projects/widgets/project_card_widget.dart';
import 'package:portfolio/core/responsive/responsive.dart';
import 'package:portfolio/core/utils/strings.dart';

class ProjectListView extends StatefulWidget {
  const ProjectListView({super.key});

  @override
  State<ProjectListView> createState() => _ProjectListViewState();
}

class _ProjectListViewState extends State<ProjectListView>
    with TickerProviderStateMixin {
  bool _showAll = false;

  @override
  Widget build(BuildContext context) {
    final visibleProjects = _showAll ? projects : projects.take(3).toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
          child: Column(
            children: visibleProjects
                .asMap()
                .entries
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(
                      bottom: 15,
                    ),
                    child: SizedBox(
                      height: context.isMobile ? 315 : 450,
                      child: ProjectCardWidget(index: e.key),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(height: 15),
        HomeButton.seeMore(
          title: _showAll ? seeLessEn : seeMoreEn,
          onTap: () {
            setState(() {
              _showAll = !_showAll;
            });
          },
        )
      ],
    );
  }
}
