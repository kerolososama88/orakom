import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/text_style.dart';

class MyDataExpansionTitleTeachingExperience extends StatelessWidget {
  const MyDataExpansionTitleTeachingExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        'خبرة التدريس',
        style: Style.textStyle15.copyWith(
          color: AppColors.whiteColor,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.r),
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.r),
      ),
      iconColor: AppColors.whiteColor,
      collapsedIconColor: AppColors.whiteColor,
      backgroundColor: AppColors.greenColor,
      collapsedBackgroundColor: AppColors.greenColor,
      children: [
        Container(
          color: AppColors.whiteColor,
          child: Padding(
            padding:  EdgeInsets.only(top: 10.h),
            child: Text(
              'لقد قمت بتدريس الدراسات الاجتماعية للمدارس المتوسطة والثانوية على مدار الـ 31 عامًا الماضية في نظام المدارس العامة في مينيسوتا لقد عملت أيضًا كأستاذ مساعد لتدريس مناهج الدراسات الاجتماعية في جامعة ولاية داكوتا الشمالية',
              style: Style.textStyle13.copyWith(
                color: AppColors.blackBlack,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
