import 'package:flutter/material.dart';
import 'package:portfolio/app/section/home/home_desktop.dart';
import 'package:portfolio/app/section/home/home_mobile.dart';
import 'package:portfolio/app/section/home/home_tablet.dart';
import 'package:portfolio/core/responsive/responsive.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/scroll_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
        final scrollProvider = Provider.of<ScrollProvider>(context, listen: false);
    return  Responsive(
      mobile: HomeMobile(scrollProvider: scrollProvider),
      tablet: HomeTablet(scrollProvider: scrollProvider),
      desktop: HomeDesktop(scrollProvider: scrollProvider),
    );
  }
}
