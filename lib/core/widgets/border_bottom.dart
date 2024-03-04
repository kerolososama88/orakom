import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/app_colors.dart';
import '../constant/text_style.dart';

class BorderBottom extends StatelessWidget {
  const BorderBottom({super.key, required this.onTap, required this.text});

  final GestureTapCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 56.h,
        decoration: BoxDecoration(
            border: Border.all(
              width: 2.sp,
              color: AppColors.primary,
            ),
            borderRadius: BorderRadius.circular(10.r)),
        child: Center(
          child: Text(
            text,
            style: Style.textStyle16.copyWith(
              color: AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
