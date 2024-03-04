import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/text_style.dart';
import 'my_data_expansion_title_studying_subjects_item.dart';

class MyDataExpansionTitleStudyingSubjects extends StatelessWidget {
  const MyDataExpansionTitleStudyingSubjects({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        'المواد',
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
            padding: EdgeInsets.only(top: 10.h),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyDataExpansionTitleStudyingSubjectsItem(text: 'الأحياء',),
                MyDataExpansionTitleStudyingSubjectsItem(text: 'اللغة العربية',),
                MyDataExpansionTitleStudyingSubjectsItem(text: 'علم النفس',),
                MyDataExpansionTitleStudyingSubjectsItem(text: 'العلوم',),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
