import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.text, });

  final String text;
  // final String? imageAssets;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103.h,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r),
        ),
        color: AppColors.primary,
      ),
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding:  EdgeInsets.only(bottom: 27.h),
        child: Text(
          text,
          style:Style.textStyle16,
        ),
      ),
    );
  }
}
