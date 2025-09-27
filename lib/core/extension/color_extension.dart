import 'package:flutter/material.dart';

import '../theme/app_brand_colors.dart';

extension ThemeColors on BuildContext {
  // Material theme
  ThemeData get theme => Theme.of(this);
  ColorScheme get colors => theme.colorScheme;

  // Commonly used colors
  Color get primary => colors.primary;
  // Color get onPrimary => colors.onPrimary;

  Color get secondary => colors.secondary;
  Color get onSecondary => colors.onSecondary;

  // Color get surface => colors.surface;
  // Color get onSurface => colors.onSurface;

  Color get error => colors.error;
  Color get onError => colors.onError;

  AppBrandColors get brandColors => theme.extension<AppBrandColors>()!;
}
