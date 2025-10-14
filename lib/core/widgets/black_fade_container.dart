import 'package:flutter/material.dart';

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
