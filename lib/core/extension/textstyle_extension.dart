import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_text_theme.dart';

extension TextStyleExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  // Headings
  TextStyle get h1 => textTheme.headlineLarge!;
  TextStyle get h2 => textTheme.headlineMedium!;
  TextStyle get h3 => textTheme.headlineSmall!;

  // Titles
  TextStyle get t1 => textTheme.titleLarge!;
  TextStyle get t2 => textTheme.titleMedium!;
  TextStyle get t3 => textTheme.titleSmall!;

  // Body
  TextStyle get b1 => textTheme.bodyLarge!;
  TextStyle get b2 => textTheme.bodyMedium!;
  TextStyle get b3 => textTheme.bodySmall!;

  // Labels
  TextStyle get l1 => textTheme.labelLarge!;
  TextStyle get l2 => textTheme.labelMedium!;
  TextStyle get l3 => textTheme.labelSmall!;
}

extension CustomTextStyles on BuildContext {
  TextStyle get heroSubtitle => AppTextTheme.heroSubtitle;
}
