import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/text_style.dart';

class CustomDetailsEducationalLevel extends StatelessWidget {
  const CustomDetailsEducationalLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'المرحلة الدراسية',
            style: Style.textStyle13.copyWith(color: AppColors.greyText),
          ),
          Text(
            'صف أول ثانوي - صف ثالث ثانوي',
            style: Style.textStyle13.copyWith(
              color: AppColors.blackBlack,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'المادة',
            style: Style.textStyle13.copyWith(color: AppColors.greyText),
          ),
          Text(
            'الفيزياء',
            style: Style.textStyle13.copyWith(
              color: AppColors.blackBlack,
            ),
          ),
        ],
      ),
    );
  }
}
