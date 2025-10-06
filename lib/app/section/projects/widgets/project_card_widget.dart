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
                        "https://private-user-images.githubusercontent.com/132826472/268874753-d5d2d286-c634-42ab-8503-fe82c66d8b2c.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NTk3Njk0ODQsIm5iZiI6MTc1OTc2OTE4NCwicGF0aCI6Ii8xMzI4MjY0NzIvMjY4ODc0NzUzLWQ1ZDJkMjg2LWM2MzQtNDJhYi04NTAzLWZlODJjNjZkOGIyYy5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUxMDA2JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MTAwNlQxNjQ2MjRaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1iNzdhNDMxN2ZhMGVhYWNmMzkxNDNiNGI2YTg4NjU4N2Q5NGE3OTljMzdjMTQwYjQ5MGUzYTk1M2JhZWMyZWRiJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.KbQZLoSVSVgiFYVbblI0Fu3y5RT2deAqgb-N0S3g3xo",
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
