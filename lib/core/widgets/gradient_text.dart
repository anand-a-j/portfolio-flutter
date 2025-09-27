import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText({
    super.key,
    required this.text,
    required this.gradient,
    this.style,
    this.isGradient = true,
    this.color,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;
  final bool isGradient;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (!isGradient) {
      return Text(
        text,
        style: style?.copyWith(color: color) ?? TextStyle(color: color),
      );
    }

    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
