import 'package:flutter/material.dart';

void showAppSnackBar(BuildContext context, String message) {
  final messenger = ScaffoldMessenger.of(context);

  messenger.hideCurrentSnackBar();

  final snackBar = SnackBar(
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    ),
    backgroundColor: Colors.white,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: const BorderSide(color: Colors.black12),
    ),
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    duration: const Duration(seconds: 3),
  );

  messenger.showSnackBar(snackBar);
}
