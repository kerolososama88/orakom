import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/text_style.dart';

class MyDataExpansionTitleStudyingSubjectsItem extends StatelessWidget {
  const MyDataExpansionTitleStudyingSubjectsItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.r),
        color: AppColors.blueColor,
      ),
      width: 79.w,
      height: 30.h,
      child: Center(
        child: Text(
          text,
          style: Style.textStyle12.copyWith(
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
