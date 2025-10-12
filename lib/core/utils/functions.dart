import 'dart:math';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const kDuration = Duration(milliseconds: 600);

// url launcher
Future<bool> openUrlLink(String url) async {
  try {
    final uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      return await launchUrl(uri);
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
}

// calculate text scale factor
double textScaleFactor(
  BuildContext context, {
  double maxTextScaleFactor = 1,
  double defaultScaleFactor = 0.5,
}) {
  final width = MediaQuery.of(context).size.width;
  maxTextScaleFactor = width > 1024 ? 1 : 2;
  defaultScaleFactor = width > 1024 ? 0.5 : 0.5;
  double val = (width / 1400) * maxTextScaleFactor;
  return max(defaultScaleFactor, min(val, maxTextScaleFactor));
}

double desktopFontSize({
  required BuildContext context,
  double minFontSize = 16,
  double maxFontSize = 19,
  double minWidth = 1024,
  double maxWidth = 1920,
}) {
  final screenWidth = MediaQuery.sizeOf(context).width;

  if (screenWidth <= minWidth) return minFontSize;
  if (screenWidth >= maxWidth) return maxFontSize;

  // Linear interpolation between minFontSize and maxFontSize
  double t = (screenWidth - minWidth) / (maxWidth - minWidth);
  return minFontSize + t * (maxFontSize - minFontSize);
}

double tabletFontSize({
  required BuildContext context,
  double minFontSize = 12, // smaller than desktop
  double maxFontSize = 18, // slightly smaller than desktop max
  double minWidth = 600, // typical small tablet width
  double maxWidth = 1024, // upper tablet width
}) {
  final screenWidth = MediaQuery.sizeOf(context).width;

  if (screenWidth <= minWidth) return minFontSize;
  if (screenWidth >= maxWidth) return maxFontSize;

  // Linear interpolation between minFontSize and maxFontSize
  double t = (screenWidth - minWidth) / (maxWidth - minWidth);
  return minFontSize + t * (maxFontSize - minFontSize);
}


double mobileFontSize({
  required BuildContext context,
  double minFontSize = 10, // very small phones
  double maxFontSize = 14, // slightly larger phones
  double minWidth = 320, // smallest typical mobile width (iPhone SE)
  double maxWidth = 600, // larger modern phones
}) {
  final screenWidth = MediaQuery.sizeOf(context).width;

  if (screenWidth <= minWidth) return minFontSize;
  if (screenWidth >= maxWidth) return maxFontSize;

  // Linear interpolation between minFontSize and maxFontSize
  double t = (screenWidth - minWidth) / (maxWidth - minWidth);
  return minFontSize + t * (maxFontSize - minFontSize);
}
