import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/utils.dart';

class InfiniteCardScroll extends StatefulWidget {
  const InfiniteCardScroll({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InfiniteCardScrollState createState() => _InfiniteCardScrollState();
}

class _InfiniteCardScrollState extends State<InfiniteCardScroll>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final ScrollController _scrollController;
  final double _scrollSpeed = 60; // pixels per second
  final double _itemWidth = 94; // 74 + 20 padding (10+10)

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    // Wait for the layout to be built before starting animation
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeAnimation();
    });
  }

  void _initializeAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1000),
    )..addListener(_smoothScrollListener);

    // Start from a position that allows seamless looping
    final initialOffset = _calculateInitialOffset();
    _scrollController.jumpTo(initialOffset);

    _controller.repeat();
  }

  void _smoothScrollListener() {
    if (!_scrollController.hasClients) return;

    final currentScroll = _scrollController.offset;
    final delta = _scrollSpeed * _controller.deltaTime;
    final newScroll = currentScroll + delta;

    // Calculate the point where we should loop back
    final loopThreshold =
        _scrollController.position.maxScrollExtent - _itemWidth;

    if (newScroll >= loopThreshold) {
      // Instead of jumping to 0, we maintain the visual continuity
      final overflow = newScroll - loopThreshold;
      _scrollController.jumpTo(overflow);
    } else {
      _scrollController.jumpTo(newScroll);
    }
  }

  double _calculateInitialOffset() {
    // Start from the middle of the duplicated content for smoother looping
    return _itemWidth * techStack.length / 2;
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        // Duplicate the items to create seamless looping
        itemCount: techStack.length * 3,
        itemBuilder: (context, index) {
          final actualIndex = index % techStack.length;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SvgPicture.asset(
              techStack[actualIndex],
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