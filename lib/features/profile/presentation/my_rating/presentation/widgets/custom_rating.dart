import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rating_summary/rating_summary.dart';

import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/assets_manager.dart';
import '../../../../../../core/constant/text_style.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32.h, bottom: 7.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                width: 24.5.w,
                height: 24.5.h,
                AssetsManager.staar,
                // color: AppColors.primary,
              ),
              Image.asset(
                width: 24.5.w,
                height: 24.5.h,
                AssetsManager.staar,
                // color: AppColors.primary,
              ),
              Image.asset(
                width: 24.5.w,
                height: 24.5.h,
                AssetsManager.staar,
                // color: AppColors.primary,
              ),
              Image.asset(
                width: 24.5.w,
                height: 24.5.h,
                AssetsManager.staar,
                // color: AppColors.primary,
              ),
              Image.asset(
                width: 24.5.w,
                height: 24.5.h,
                AssetsManager.staar,
                // color: AppColors.primary,
              ),
              SizedBox(
                width: 9.w,
              ),
              Text(
                '4.9',
                style: Style.textStyle20.copyWith(color: AppColors.blackBlack),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h,bottom: 20.h),
            child: Text(
              '260 تقييما',
              style: Style.textStyle13.copyWith(
                color: AppColors.cartGreyText,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const RatingSummary(
              color: AppColors.blueColor,
              counter: 13,
              average: 3.846,
              showAverage: false,
              counterFiveStars: 5,
              counterFourStars: 4,
              counterThreeStars: 2,
              counterTwoStars: 0,
              counterOneStars: 0,
            ),
          )
        ],
      ),
    );
  }
}
