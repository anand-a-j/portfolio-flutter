import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/extension/color_extension.dart';

import '../../../../core/utils/colors.dart';

class ContactSocialButton extends StatefulWidget {
  const ContactSocialButton({
    super.key,
    required this.image,
    this.onTap,
  });

  final String image;
  final void Function()? onTap;

  @override
  State<ContactSocialButton> createState() => _ContactSocialButtonState();
}

class _ContactSocialButtonState extends State<ContactSocialButton> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHover = true),
      onExit: (_) => setState(() => _isHover = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: primaryContainer,
            border: Border.all(
              width: _isHover ? 1 : 0.5,
              color: _isHover ? Colors.white : primaryContainerBorder,
            ),
          ),
          child: Center(
            child: SvgPicture.asset(
              widget.image,
              height: 30,
              width: 30,
              colorFilter: ColorFilter.mode(
                context.secondary,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
