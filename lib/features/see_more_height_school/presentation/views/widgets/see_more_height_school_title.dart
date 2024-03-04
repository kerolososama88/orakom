import 'package:flutter/material.dart';
import 'package:orakom/core/constant/app_colors.dart';

import '../../../../../core/constant/text_style.dart';

class SeeMoreHeightSchoolTitle extends StatelessWidget {
  const SeeMoreHeightSchoolTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      'استكشف مواد المدرسة الأعدادية',
      style: Style.textStyle13.copyWith(
        color: AppColors.blackTitleText,
      ),
    );
  }
}
