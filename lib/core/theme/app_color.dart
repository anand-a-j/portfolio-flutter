import 'package:flutter/material.dart';

mixin AppColor {
  static const Color primary = Color(0xffBC3CD8);

  static const Color secondary = Color(0xffffffff);
  static const Color onSecondary = Color(0xff000000);

  static const Color primaryContainer = Color(0xff161619);
  static const Color primaryContainerBorder = Color(0xff363636);
  static const Color onPrimaryContainer = Color(0xfff4f4f4);
  static const Color onPrimaryContainerDim = Color(0xff8b8b92);

  static const Color error = Color(0xffF44336); 
  static const Color onError =
      Color(0xffffffff); 

  static const primaryGradient = LinearGradient(
    colors: [
      Color(0xffBC3CD8),
      Color(0xffC54B8C),
    ],
    begin: AlignmentGeometry.topLeft,
    end: AlignmentGeometry.bottomRight,
    stops: [
      0.0,
      1.0,
    ],
  );

  static const heroTextGradient = LinearGradient(
    colors: [
      Color(0xFFE0E0E0),
      Color(0xFFFFFFFF),
      Color(0xFFB0B0B0),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
