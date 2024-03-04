import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/assets_manager.dart';
import '../../../../../core/constant/text_style.dart';
import '../../../../../core/widgets/defaultButtom.dart';

class CustomPointsView extends StatelessWidget {
  const CustomPointsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.0.w),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 32.0.h, bottom: 12.h),
            child: Text(
              maxLines: 1,
              textAlign: TextAlign.center,
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة',
              style: Style.textStyle12.copyWith(
                color: AppColors.completePaymentGrey,
              ),
            ),
          ),
          Text(
            style: Style.textStyle18.copyWith(
              color: AppColors.primary
            ),
            'كل 100 نقطة = 200 ريال',
          ),
          SizedBox(
            height: 49.h,
          ),
          Image.asset(
            width: 163.w,
            height: 137.h,
            AssetsManager.medal,
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0.h, bottom: 11.h),
            child: Text(
              '1,420',
              style: Style.textStyle40.copyWith(color: AppColors.primary),
            ),
          ),
          Text(
            'نقطة',
            style: Style.textStyle14.copyWith(
              color: AppColors.completePaymentGrey,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          defaultButtom(
            function: () {},
            color: AppColors.primary,
            text: 'تحويل النقاط ال رصيد',
          ),
        ],
      ),
    );
  }
}
