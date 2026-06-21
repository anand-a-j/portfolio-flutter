import 'package:flutter/material.dart';

import '../../../../../core/constants/app_links.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/utils/functions.dart';
import '../../../../../core/utils/snackbar.dart';

class OpenToWorkChip extends StatefulWidget {
  const OpenToWorkChip({super.key});

  @override
  State<OpenToWorkChip> createState() => _OpenToWorkChipState();
}

class _OpenToWorkChipState extends State<OpenToWorkChip>
    with SingleTickerProviderStateMixin {
  late AnimationController _blinkController;

  @override
  void initState() {
    super.initState();
    // Controls the green blinking effect
    _blinkController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _blinkController.dispose();
    super.dispose();
  }

  Future<void> _launchResume() async {
    final success = await openUrlLink(AppLinks.resume);

    if (!success && context.mounted) {
      // ignore: use_build_context_synchronously
      showAppSnackBar(context, "Something went wrong");
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchResume,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: AppColor.primaryContainer.withOpacity(0.8),
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: AppColor.primaryContainerBorder,
              width: 1,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min, // Keeps the chip tight to the text
            children: [
              // Blinking Green Indicator
              FadeTransition(
                opacity: _blinkController,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.greenAccent,
                        blurRadius: 4,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),

              // Rich Text for Resume
              Text.rich(
                TextSpan(
                  text: "Open to work  •  ",
                  style: const TextStyle(
                    color: AppColor.onPrimaryContainerDim,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: "View Resume",
                      style: const TextStyle(
                        color: AppColor.secondary, // Uses white from your theme
                        fontWeight: FontWeight.w600,
                        // Adding a subtle underline to indicate it's clickable
                        decoration: TextDecoration.underline,
                        decorationColor: AppColor.secondary,
                        decorationThickness: 0.9,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
