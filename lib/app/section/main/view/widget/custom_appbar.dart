import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/core/extension/color_extension.dart';
import 'package:portfolio/core/responsive/responsive.dart';
import 'package:portfolio/core/utils/strings.dart';

import '../../../../../core/constants/app_consts.dart';
import '../../../../../core/providers/scroll_provider.dart';
import '../../../../../core/utils/colors.dart';
import 'custom_appbar_button.dart';
import 'live_clock.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.scrollProvider,
    required this.scaffoldKey,
  });

  final ScrollProvider scrollProvider;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
        left: context.isDesktop
            ? AppConsts.pWebSideHorz
            : context.isTablet
                ? AppConsts.pTabletSideHorz
                : AppConsts.pMedium,
        right: context.isDesktop
            ? AppConsts.pWebSideHorz
            : context.isTablet
                ? AppConsts.pTabletSideHorz
                : AppConsts.pMedium,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            height: 54,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 26,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 95, 95, 95).withOpacity(0.18),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                width: 1,
                color: primaryContainerBorder,
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color.fromARGB(255, 87, 87, 87).withOpacity(0.22),
                  const Color.fromARGB(255, 117, 117, 117).withOpacity(0.12),
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LiveClock(),
                context.isMobile
                    ? GestureDetector(
                        onTap: () {
                      
                          scaffoldKey.currentState?.openEndDrawer();
                        },
                        child: Icon(
                          Icons.menu,
                          color: context.secondary,
                        ),
                      )
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppBarHoverButton(
                            title: home,
                            onTap: () => scrollProvider.jumpTo(0),
                          ),
                          AppBarHoverButton(
                            title: services,
                            onTap: () => scrollProvider.jumpTo(1),
                          ),
                          AppBarHoverButton(
                            title: projects,
                            onTap: () => scrollProvider.jumpTo(2),
                          ),
                          AppBarHoverButton(
                            title: contacts,
                            onTap: () => scrollProvider.jumpTo(3),
                          ),
                        ],
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
