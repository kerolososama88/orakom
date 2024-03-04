import 'package:flutter/material.dart';

import '../constant/text_style.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key, required this.text, required this.text1});

  final String text;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: text1,
          style: Style.textStyle12.copyWith(
            color: const Color.fromRGBO(154, 154, 154, 1),
          ),
        ),
        TextSpan(
          text: text,
          style: Style.textStyle12.copyWith(
            color: const Color.fromRGBO(45, 118, 121, 1),
          ),
        ),
      ]),
    );
  }
}
