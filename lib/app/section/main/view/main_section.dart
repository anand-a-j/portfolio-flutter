import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/app/section/main/view/widget/custom_appbar_button.dart';
import 'package:portfolio/app/section/main/view/widget/drawer_mobile.dart';
import 'package:portfolio/core/providers/scroll_provider.dart';
import 'package:portfolio/app/utils/utils.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/functions.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'widget/custom_appbar.dart';
import 'widget/live_clock.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context, listen: false);
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: bgColor,
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(60),
      //   child: ClipRRect(
      //     borderRadius: BorderRadius.circular(50), // ensure clipping
      //     child: BackdropFilter(
      //       filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
      //       child: Container(
      //         width: double.infinity,
      //         margin: const EdgeInsets.symmetric(
      //           horizontal: 150,
      //         ),
      //         padding: const EdgeInsets.symmetric(
      //           horizontal: 26,
      //           vertical: 20,
      //         ),
      //         decoration: BoxDecoration(
      //           color: bgColor.withOpacity(0.18),
      //           borderRadius: BorderRadius.circular(50),
      //           border: Border.all(
      //             width: 1,
      //             color: primaryContainerBorder,
      //           ),
      //           gradient: LinearGradient(
      //             begin: Alignment.topLeft,
      //             end: Alignment.bottomRight,
      //             colors: [
      //               bgColor.withOpacity(0.22),
      //               bgColor.withOpacity(0.12),
      //             ],
      //           ),
      //         ),
      //         child: Text(
      //           "Hello Annad",
      //           style: TextStyle(
      //             color: Colors.white,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),

      // buildGlassAppBar(width, context, scrollProvider),
      // appBar: AppBar(
      //   backgroundColor: bgColor,
      //   elevation: 0,
      //   title: Padding(
      //     padding: EdgeInsets.only(left: width > 1024 ?  150:10),
      //     child: Text(
      //       '<Anand/>',
      //       style: const TextStyle(fontFamily: 'Pacifico'),
      //       textScaler: TextScaler.linear(
      //         textScaleFactor(context),
      //       ),
      //     ),
      //   ),
      //   actions: width > 1024 ? [
      //     AppBarHoverButton(
      //       title: 'Home',
      //       onTap: () => scrollProvider.jumpTo(0),
      //     ),
      //     const SizedBox(width: 10),
      //     AppBarHoverButton(
      //       title: 'Services',
      //       onTap: () => scrollProvider.jumpTo(1),
      //     ),
      //     const SizedBox(width: 10),
      //     AppBarHoverButton(
      //       title: 'Projects',
      //       onTap: () => scrollProvider.jumpTo(2),
      //     ),
      //     const SizedBox(width: 10),
      //     AppBarHoverButton(
      //       title: 'Contacts',
      //       onTap: () => scrollProvider.jumpTo(3),
      //     ),
      //     const SizedBox(width: 100),
      //   ] : null
      // ),
      endDrawer: width < 1024 ? const DrawerMobile() : null,
      body: ScrollablePositionedList.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: body.length,
        itemScrollController: scrollProvider.scrollController,
        itemBuilder: (context, index) => body[index],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: CustomAppBar(scrollProvider: scrollProvider),
    );
  }
}

