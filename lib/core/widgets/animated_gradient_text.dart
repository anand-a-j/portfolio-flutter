import 'package:flutter/material.dart';
import 'package:portfolio/core/responsive/responsive.dart';
import 'package:portfolio/core/theme/app_color.dart';

class HomeHeroGridientText extends StatelessWidget with AppColor {
  const HomeHeroGridientText({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ShaderMask(
      shaderCallback: (bounds) {
        return AppColor.heroTextGradient.createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        );
      },
      child: Text(
        title,
        style: TextStyle(
          fontSize: context.isMobile
              ? 30
              : context.isTablet
                  ? 46
                  : 64,
          fontWeight: FontWeight.bold,
          color: Colors.white, // necessary for ShaderMask
          height: 1.3,
        ),
        textAlign: TextAlign.center,
      ),
    ));
  }
}
