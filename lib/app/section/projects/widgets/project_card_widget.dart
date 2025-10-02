import 'package:flutter/material.dart';
import 'package:portfolio/app/section/projects/model/project_model.dart';
import 'package:portfolio/core/extension/color_extension.dart';
import 'package:portfolio/core/extension/textstyle_extension.dart';
import 'package:portfolio/core/providers/animated_provider.dart';
import 'package:portfolio/core/responsive/responsive.dart';
import 'package:portfolio/core/utils/functions.dart';
import 'package:portfolio/core/utils/strings.dart' hide projects;
import 'package:provider/provider.dart';

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
              // boxShadow: boxShadow,
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
                        "https://images.unsplash.com/photo-1534670007418-fbb7f6cf32c3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHVpJTIwdXh8ZW58MHx8MHx8fDA%3D",
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
                Container(
                  height: 46,
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
                      viewProjectEn,
                      style: context.bodyMedium.copyWith(
                        fontWeight: FontWeight.w500,
                        color: context.secondary,
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
