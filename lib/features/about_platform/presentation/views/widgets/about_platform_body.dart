import 'package:flutter/material.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';
import 'package:orakom/features/about_platform/presentation/views/widgets/image_about_me.dart';

import 'about_platform_text.dart';

class AboutPlatformBody extends StatelessWidget {
  const AboutPlatformBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbarArrow(text: 'عن المنصة',),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ImageAboutMe(),
                AboutPlatformText(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
