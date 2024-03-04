import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/assets_manager.dart';
import '../../../../../core/constant/text_style.dart';

class CustomDetailsProfileRating extends StatelessWidget {
  const CustomDetailsProfileRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '(260)',
          style:
          Style.textStyle12.copyWith(color: AppColors.cartGreyText),
        ),
        Padding(
          padding: EdgeInsets.only(right: 7.w),
          child: Image.asset(
            width: 12.w,
            height: 12.h,
            AssetsManager.staar,
            // color: AppColors.primary,
          ),
        ),
        Image.asset(
          width: 12.5.w,
          height: 12.5.h,
          AssetsManager.staar,
          // color: AppColors.primary,
        ),
        Image.asset(
          width: 12.5.w,
          height: 12.5.h,
          AssetsManager.staar,
          // color: AppColors.primary,
        ),
        Image.asset(
          width: 12.5.w,
          height: 12.5.h,
          AssetsManager.staar,
          // color: AppColors.primary,
        ),
        Image.asset(
          width: 12.5.w,
          height: 12.5.h,
          AssetsManager.staar,
          // color: AppColors.primary,
        ),
        SizedBox(
          width: 9.w,
        ),
        Text(
          '4.9',
          style:
          Style.textStyle12.copyWith(color: AppColors.blackBlack),
        ),
      ],
    );
  }
}
