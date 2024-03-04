import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/text_style.dart';

class SettingTitle extends StatelessWidget {
  const SettingTitle({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(right: 17.w),
      child: Text(
        text,
        style: Style.textStyle16.copyWith(
          color: AppColors.blackTitleText,
        ),
      ),
    );
  }
}
