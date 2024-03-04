import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/assets_manager.dart';
import '../../../../../core/constant/text_style.dart';

class CustomDetailsProfileFollow extends StatelessWidget {
  const CustomDetailsProfileFollow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '500 متابع',
          style:
          Style.textStyle12.copyWith(color: AppColors.cartGreyText),
        ),
        Padding(
          padding: EdgeInsets.only(left: 7.w,right: 10.w),
          child: Image.asset(
            width: 12.w,
            height: 12.h,
            AssetsManager.starrrr,
            color: AppColors.primary,
          ),
        ),
        Text(
          'متابعة',
          style:
          Style.textStyle12.copyWith(color: AppColors.primary),
        ),
      ],
    );
  }
}
