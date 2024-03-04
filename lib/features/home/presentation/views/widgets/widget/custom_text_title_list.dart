import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';

class CustomTextTitleList extends StatelessWidget {
  const CustomTextTitleList({super.key, required this.text, required this.alignmentDirectional});

  final String text;
  final AlignmentDirectional alignmentDirectional;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 17.w,
        top: 16.31.h,
        bottom: 14.h,
      ),
      child: Align(
        alignment: alignmentDirectional,
        child: Text(
          text,
          style: Style.textStyle13.copyWith(
            color: AppColors.blackTitleText,
          ),
        ),
      ),
    );
  }
}
