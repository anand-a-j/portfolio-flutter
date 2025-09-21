import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/app/utils/utils.dart';
import 'package:portfolio/core/utils/colors.dart';

import '../../../core/constants/app_consts.dart';
import '../../../core/constants/assets.dart';
import '../../../core/widgets/title_rich_text.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height / 2,
      width: width,
      // color: Colors.red,
      margin: const EdgeInsets.symmetric(
        horizontal: AppConsts.pWebSide,
        // vertical: AppConsts.pWebVeritical,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          TitleRichText(
            titleOne: "Technical",
            titleTwo: "Skills",
          ),
          const SizedBox(height: 20),
          Stack(
            children: [
              ContinuousScrollPage(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.translate(
                    offset: Offset(-4, 0),
                    child: BlackFadeContainer(),
                  ),
                  Transform.translate(
                    offset: Offset(4, 0),
                    child: BlackFadeContainer(isLeftToRight: false),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class InfiniteCardScroll extends StatefulWidget {
  @override
  _InfiniteCardScrollState createState() => _InfiniteCardScrollState();
}

class _InfiniteCardScrollState extends State<InfiniteCardScroll>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final ScrollController _scrollController;

  double scrollSpeed = 60; 

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1000), 
    )..addListener(_scrollListener);

    _controller.repeat(); 
  }

  void _scrollListener() {
    if (_scrollController.hasClients) {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double currentScroll = _scrollController.offset;
      double delta = scrollSpeed * _controller.deltaTime;

      if (currentScroll + delta >= maxScroll) {
        _scrollController.jumpTo(0); // loop back
      } else {
        _scrollController.jumpTo(currentScroll + delta);
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        itemCount: techStack.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SvgPicture.asset(
              techStack[index], // Ensure this asset is defined
              height: 74,
              width: 74,
            ),
          );
        },
      ),
    );
  }
}

extension on AnimationController {
  double get deltaTime => 1 / 60; // assume 60 FPS
}

class ContinuousScrollPage extends StatefulWidget {
  @override
  _ContinuousScrollPageState createState() => _ContinuousScrollPageState();
}

class _ContinuousScrollPageState extends State<ContinuousScrollPage> {
  final ScrollController _scrollController = ScrollController();
  final int _itemCount = 20;

  @override
  void initState() {
    super.initState();

    // Jump to a "middle" offset so you can scroll both directions infinitely
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          // Loop items using modulo
          final realIndex = index % _itemCount;
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: SvgPicture.asset(
              Assets.flutter,
              height: 74,
              width: 74,
            ),
          );
          return Container(
            width: 140,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: primaryContainer,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                width: 1,
                color: primaryContainerBorder,
              ),
            ),
            child: Center(
              child: Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Assets.flutter,
                    height: 34,
                    width: 34,
                  ),
                  Text(
                    'Flutter $realIndex',
                    style: TextStyle(
                      color: onPrimaryContainer,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class BlackFadeContainer extends StatelessWidget {
  const BlackFadeContainer({
    super.key,
    this.isLeftToRight = true,
  });

  final bool isLeftToRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: isLeftToRight ? Alignment.centerLeft : Alignment.centerRight,
          end: !isLeftToRight ? Alignment.centerLeft : Alignment.centerRight,
          colors: [
            Colors.black,
            Colors.black.withOpacity(0.5),
            Colors.black.withOpacity(0.0),
          ],
          stops: [0.0, 0.5, 1.0],
        ),
      ),
    );
  }
}
