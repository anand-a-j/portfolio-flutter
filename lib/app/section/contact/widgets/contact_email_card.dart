import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/core/utils/snackbar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/colors.dart';

class ContactEmailCard extends StatefulWidget {
  const ContactEmailCard({super.key});

  @override
  State<ContactEmailCard> createState() => _ContactEmailCardState();
}

class _ContactEmailCardState extends State<ContactEmailCard> {
  bool _isHover = false;
  final String email = "anandjayakumar2001@gmail.com";

  Future<void> _openGmail() async {
    final Uri emailUri = Uri.parse("mailto:$email");
    final success =
        await launchUrl(emailUri, mode: LaunchMode.externalApplication);

    if (!success && mounted) {
      showAppSnackBar(context, "Could not open Gmail");
    }
  }

  Future<void> _copyToClipboard() async {
    showAppSnackBar(context, "Email copied to clipboard!");
    await Clipboard.setData(ClipboardData(text: email));
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHover = true),
      onExit: (_) => setState(() => _isHover = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _copyToClipboard,
        onDoubleTap: _openGmail,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 50,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: primaryContainer,
            border: Border.all(
              width: _isHover ? 1 : 0.5,
              color: _isHover ? Colors.white : primaryContainerBorder,
            ),
          ),
          child: Center(
            child: Text(
              email,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: "PlusJakartaSans",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
