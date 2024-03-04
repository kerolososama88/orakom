import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/text_style.dart';

class MyDataExpansionTitleSchoolGrade extends StatelessWidget {
  const MyDataExpansionTitleSchoolGrade({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: ExpansionTile(
        title: Text(
          'المراحل الدراسية',
          style: Style.textStyle15.copyWith(
            color: AppColors.primary,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.r),
        ),
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.r),
        ),
        iconColor: AppColors.greyText,
        collapsedIconColor: AppColors.greyText,
        backgroundColor: AppColors.switchColor,
        collapsedBackgroundColor: AppColors.whiteColor,
        children: [
          Container(
            color: AppColors.whiteColor,
            child: Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Text(
                'لقد قمت بتدريس الدراسات الاجتماعية للمدارس المتوسطة والثانوية على مدار الـ 31 عامًا الماضية في نظام المدارس العامة في مينيسوتا لقد عملت أيضًا كأستاذ مساعد لتدريس مناهج الدراسات الاجتماعية في جامعة ولاية داكوتا الشمالية',
                style: Style.textStyle13.copyWith(
                  color: AppColors.blackBlack,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
