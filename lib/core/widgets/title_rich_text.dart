import 'package:flutter/material.dart';
import 'package:portfolio/core/extension/color_extension.dart';
import 'package:portfolio/core/extension/textstyle_extension.dart';

class TitleRichText extends StatelessWidget {
  const TitleRichText({
    super.key,
    required this.titleOne,
    required this.titleTwo,
  });

  final String titleOne;
  final String titleTwo;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: titleOne,
        style: context.headlineMedium.copyWith(
          fontSize: 36,
          color: Color(0xFFBABABA),
        ),
        // style: TextStyle(
        //   fontSize: 36,
        //   color: Color(0xFFBABABA),
        //   fontWeight: FontWeight.w600,
        // ),
        children: [
          TextSpan(
            text: " $titleTwo",
            style: context.headlineMedium.copyWith(
              fontSize: 36,
              color: context.secondary,
            ),
            // style: TextStyle(
            //   fontSize: 36,
            //   color: Colors.white,
            //   fontWeight: FontWeight.w600,
            // ),
          )
        ],
      ),
    );
  }
}
