
import 'package:flutter/material.dart';
import 'package:portfolio/app/section/main/view/widget/drawer_mobile.dart';
import 'package:portfolio/core/providers/scroll_provider.dart';
import 'package:portfolio/app/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'widget/custom_appbar.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context, listen: false);
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      endDrawer: DrawerMobile(),
      body: ScrollablePositionedList.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: body.length,
        itemScrollController: scrollProvider.scrollController,
        itemBuilder: (context, index) => body[index],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: CustomAppBar(
        scrollProvider: scrollProvider,
        scaffoldKey: scaffoldKey,
      ),
    );
  }
}
