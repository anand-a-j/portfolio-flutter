import 'package:flutter/material.dart';
import 'package:portfolio/core/extension/color_extension.dart';
import 'package:portfolio/core/extension/textstyle_extension.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/widgets/gradient_text.dart';

class AppBarHoverButton extends StatefulWidget {
  final String title;
  final VoidCallback? onTap;
  const AppBarHoverButton({super.key, required this.title, this.onTap});

  @override
  State<AppBarHoverButton> createState() => _AppBarHoverButtonState();
}

class _AppBarHoverButtonState extends State<AppBarHoverButton> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
        child: GestureDetector(
          onTap: widget.onTap,
          child: GradientText(
            text: widget.title,
            gradient: AppColor.primaryGradient,
            isGradient: _hovering,
            color: context.secondary,
            style: context.bodyMedium,
          ),
        ),
      ),
    );
  }
}
