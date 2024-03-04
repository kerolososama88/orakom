import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/text_style.dart';

class CustomSubjectSpecies extends StatelessWidget {
  const CustomSubjectSpecies({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h,bottom: 20.h,left: 17.w,right: 17.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'نوع الملف',
                style: Style.textStyle13.copyWith(color: AppColors.greyText),
              ),
              Text(
                'PDF',
                style: Style.textStyle13.copyWith(
                  color: AppColors.blackBlack,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'نوع المصدر',
                style: Style.textStyle13.copyWith(color: AppColors.greyText),
              ),
              Text(
                'عروض تقديمية',
                style: Style.textStyle13.copyWith(
                  color: AppColors.blackBlack,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'عدد الصفحات',
                style: Style.textStyle13.copyWith(color: AppColors.greyText),
              ),
              Text(
                '40 صفحة',
                style: Style.textStyle13.copyWith(
                  color: AppColors.blackBlack,
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
