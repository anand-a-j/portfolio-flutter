import 'package:flutter/material.dart';
import 'package:portfolio/app/section/projects/model/project_model.dart';
import 'package:portfolio/core/extension/color_extension.dart';
import 'package:portfolio/core/extension/textstyle_extension.dart';
import 'package:portfolio/core/providers/animated_provider.dart';
import 'package:portfolio/core/responsive/responsive.dart';
import 'package:portfolio/core/utils/functions.dart';
import 'package:portfolio/core/utils/strings.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/snackbar.dart';

class ProjectCardWidget extends StatelessWidget {
  final int index;
  const ProjectCardWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    double imageHeight = context.isTablet
        ? (size.width * 0.24).clamp(290, 380)
        : (size.width * 0.24).clamp(140, 300);
    return Consumer<AnimateProvider>(
      builder: (context, animate, _) {
        return InkWell(
          onTap: () {
            animate.setIshover(true, index);
          },
          onHover: (value) {
            animate.setIshover(value, index);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOutCubic,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: context.brandColors.primaryContainer,
              border: Border.all(
                width: 1,
                color: context.brandColors.primaryContainerBorder,
              ),
              boxShadow: animate.isHover && index == animate.currentIndex
                  ? [
                      BoxShadow(
                        color: context.primary.withValues(alpha: 0.5),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ]
                  : [],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: imageHeight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    image: DecorationImage(
                      image: NetworkImage(
                        projects[index].imageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  projects[index].title,
                  style: context.bodyLarge.copyWith(
                    color: context.brandColors.onPrimaryContainer,
                    fontSize: desktopFontSize(
                      context: context,
                      maxFontSize: 18,
                      minFontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  projects[index].description,
                  style: context.bodyMedium.copyWith(
                    fontSize: desktopFontSize(
                      context: context,
                      maxFontSize: 16,
                      minFontSize: 10,
                    ),
                    color: context.brandColors.onPrimaryContainerDim,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () async {
                    final success =
                        await openUrlLink(projects[index].githubLink);

                    if (!success && context.mounted) {
                      showAppSnackBar(context, linkOpenErrorEn);
                    }
                  },
                  child: Container(
                    height: 43,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: context.onSecondary,
                      border: Border.all(
                        width: 0.5,
                        color: context.brandColors.primaryContainerBorder,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        viewOnGithubEn,
                        style: context.bodyMedium.copyWith(
                          fontWeight: FontWeight.w500,
                          color: context.secondary,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
