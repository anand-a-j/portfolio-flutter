import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/constants/assets.dart';
import 'package:portfolio/core/extension/color_extension.dart';
import 'package:portfolio/core/extension/textstyle_extension.dart';
import 'package:portfolio/core/providers/scroll_provider.dart';
import 'package:provider/provider.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var scrollProvider = context.watch<ScrollProvider>();
    return Drawer(
      backgroundColor: context.onSecondary,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 25,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  Assets.closeX,
                  height: 28,
                  width: 28,
                ),
              ),
            ),
            _DrawerTitleButton(
              title: "Home",
              onTap: () {
                Navigator.pop(context);
                scrollProvider.jumpTo(0);
              },
            ),
            _DrawerTitleButton(
              title: "About",
              onTap: () {
                Navigator.pop(context);
                scrollProvider.jumpTo(1);
              },
            ),
            _DrawerTitleButton(
              title: "Project",
              onTap: () {
                Navigator.pop(context);
                scrollProvider.jumpTo(2);
              },
            ),
            _DrawerTitleButton(
              title: "Contact",
              onTap: () {
                Navigator.pop(context);
                scrollProvider.jumpTo(3);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerTitleButton extends StatelessWidget {
  const _DrawerTitleButton({
    required this.title,
    required this.onTap,
  });

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: context.headlineSmall,
      ),
    );
  }
}
