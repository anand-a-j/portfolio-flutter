import 'package:flutter/material.dart';

@immutable
class AppBrandColors extends ThemeExtension<AppBrandColors> {
  final Color primaryContainer;
  final Color primaryContainerBorder;
  final Color onPrimaryContainer;
  final Color onPrimaryContainerDim;

  const AppBrandColors({
    required this.primaryContainer,
    required this.primaryContainerBorder,
    required this.onPrimaryContainer,
    required this.onPrimaryContainerDim,
  });

  @override
  AppBrandColors copyWith({
    Color? primaryContainer,
    Color? primaryContainerBorder,
    Color? onPrimaryContainer,
    Color? onPrimaryContainerDim,
  }) {
    return AppBrandColors(
      primaryContainer: primaryContainer ?? this.primaryContainer,
      primaryContainerBorder:
          primaryContainerBorder ?? this.primaryContainerBorder,
      onPrimaryContainer: onPrimaryContainer ?? this.onPrimaryContainer,
      onPrimaryContainerDim:
          onPrimaryContainerDim ?? this.onPrimaryContainerDim,
    );
  }

  @override
  AppBrandColors lerp(AppBrandColors? other, double t) {
    if (other == null) return this;
    return AppBrandColors(
      primaryContainer:
          Color.lerp(primaryContainer, other.primaryContainer, t)!,
      primaryContainerBorder:
          Color.lerp(primaryContainerBorder, other.primaryContainerBorder, t)!,
      onPrimaryContainer:
          Color.lerp(onPrimaryContainer, other.onPrimaryContainer, t)!,
      onPrimaryContainerDim:
          Color.lerp(onPrimaryContainerDim, other.onPrimaryContainerDim, t)!,
    );
  }
}
