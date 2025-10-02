import 'package:flutter/material.dart';
import 'package:portfolio/core/extension/color_extension.dart';
import 'package:portfolio/core/extension/textstyle_extension.dart';
import 'package:portfolio/core/responsive/responsive.dart';

class HomeButton extends StatefulWidget {
  const HomeButton({
    super.key,
    required this.title,
    this.onTap,
    this.isSeeMore = false,
  });

  const HomeButton.seeMore({
    super.key,
    required this.title,
    this.onTap,
  }) : isSeeMore = true;

  final String title;
  final void Function()? onTap;
  final bool isSeeMore;

  @override
  State<HomeButton> createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (isHover) {
        setState(() {
          _isHover = isHover;
        });
      },
      borderRadius: BorderRadius.circular(50),
      child: AnimatedContainer(
        constraints: BoxConstraints(
          maxWidth: widget.isSeeMore
              ? 150
              : context.isMobile
                  ? 250
                  : double.infinity,
        ),
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOutCubic,
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: !_isHover ? context.onSecondary : context.secondary,
          border: Border.all(
            width: 1,
            color: context.brandColors.onPrimaryContainerDim,
          ),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: context.bodyLarge.copyWith(
              color: _isHover ? context.onSecondary : context.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
