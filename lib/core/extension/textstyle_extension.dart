import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_text_theme.dart';

extension TextStyleExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  // Headings
  TextStyle get headlineLarge => textTheme.headlineLarge!;
  TextStyle get headlineMedium => textTheme.headlineMedium!;
  TextStyle get headlineSmall => textTheme.headlineSmall!;

  // Titles
  TextStyle get titleLarge => textTheme.titleLarge!;
  TextStyle get titleMedium => textTheme.titleMedium!;
  TextStyle get titleSmall => textTheme.titleSmall!;

  // Body
  TextStyle get bodyLarge => textTheme.bodyLarge!;
  TextStyle get bodyMedium => textTheme.bodyMedium!;
  TextStyle get bodySmall => textTheme.bodySmall!;

  // Labels
  TextStyle get labelLarge => textTheme.labelLarge!;
  TextStyle get labelMedium => textTheme.labelMedium!;
  TextStyle get labelSmall => textTheme.labelSmall!;
}

extension CustomTextStyles on BuildContext {
  TextStyle get heroSubtitle => AppTextTheme.heroSubtitle;
}
