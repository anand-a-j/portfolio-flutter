import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/utils/colors.dart';

class AppTextTheme with AppColor {
  static TextTheme get textTheme => const TextTheme(
        headlineLarge: TextStyle(
          fontFamily: "PlusJakartaSans",
          fontSize: 48,
          fontWeight: FontWeight.w800,
          color: AppColor.secondary,
          letterSpacing: -0.5,
        ),
        headlineMedium: TextStyle(
          fontFamily: "PlusJakartaSans",
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: AppColor.secondary,
          letterSpacing: -0.25,
        ),
        headlineSmall: TextStyle(
          fontFamily: "PlusJakartaSans",
          fontSize: 28, // Subsection titles
          fontWeight: FontWeight.w700,
          color: AppColor.secondary,
        ),
        titleLarge: TextStyle(
          fontFamily: "PlusJakartaSans",
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: AppColor.secondary,
        ),
        titleMedium: TextStyle(
          fontFamily: "PlusJakartaSans",
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: AppColor.secondary,
        ),
        titleSmall: TextStyle(
          fontFamily: "PlusJakartaSans",
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColor.secondary,
        ),
        bodyLarge: TextStyle(
          fontFamily: "PlusJakartaSans",
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColor.secondary,
        ),
        bodyMedium: TextStyle(
          fontFamily: "PlusJakartaSans",
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColor.secondary,
        ),
        bodySmall: TextStyle(
          fontFamily: "PlusJakartaSans",
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColor.secondary,
        ),
        labelLarge: TextStyle(
          fontFamily: "PlusJakartaSans",
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColor.secondary,
          letterSpacing: 0.5,
        ),
        labelMedium: TextStyle(
          fontFamily: "PlusJakartaSans",
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColor.secondary,
          letterSpacing: 0.25,
        ),
        labelSmall: TextStyle(
          fontFamily: "PlusJakartaSans",
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: AppColor.secondary,
        ),
      );

  static TextStyle heroSubtitle = TextStyle(
    fontFamily: "JetBrainsMono",
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: onPrimaryContainer,
    letterSpacing: 0,
    wordSpacing: 0,
  );

  static TextStyle contactSubtitle = TextStyle(
    fontFamily: "JetBrainsMono",
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: onPrimaryContainerDim,
    letterSpacing: 0,
    wordSpacing: 0,
  );

  static TextStyle contactTitle = TextStyle(
    fontFamily: "Denton",
    fontSize: 48,
    fontWeight: FontWeight.w700,
    color: AppColor.secondary,
  );
}
