import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_brand_colors.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/theme/app_text_theme.dart';

ThemeData buildDarkTheme() {
  return ThemeData(
    textTheme: AppTextTheme.textTheme,
    fontFamily: "PlusJakartaSans",
    primaryColor: AppColor.primary,
    scaffoldBackgroundColor: AppColor.onSecondary,
    colorScheme: ColorScheme(
      primary: AppColor.primary,
      onPrimary: AppColor.secondary,
      secondary: AppColor.secondary,
      onSecondary: AppColor.onSecondary,
      brightness: Brightness.dark,
      error: AppColor.error,
      onError: AppColor.onError,
      surface: AppColor.primaryContainer,
      onSurface: AppColor.onPrimaryContainer,
    ),
    extensions: [
      AppBrandColors(
        primaryContainer: AppColor.primaryContainer,
        primaryContainerBorder: AppColor.primaryContainerBorder,
        onPrimaryContainer: AppColor.onPrimaryContainer,
        onPrimaryContainerDim: AppColor.onPrimaryContainerDim,
      )
    ],
  );
}
