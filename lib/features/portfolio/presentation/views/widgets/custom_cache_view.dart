import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/assets_manager.dart';
import '../../../../../core/constant/text_style.dart';
import '../../../../../core/widgets/defaultButtom.dart';

class CustomCacheView extends StatelessWidget {
  const CustomCacheView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.0.w),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 32.0.h, bottom: 25.h),
            child: Text(
              maxLines: 1,
              textAlign: TextAlign.center,
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة',
              style: Style.textStyle12.copyWith(
                color: AppColors.completePaymentGrey,
              ),
            ),
          ),
          Image.asset(
            width: 163.w,
            height: 137.h,
            AssetsManager.pocket,
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0.h, bottom: 11.h),
            child: Text(
              '1,420',
              style: Style.textStyle40
                  .copyWith(color: AppColors.primary),
            ),
          ),
          Text(
            'ريال سعودي',
            style: Style.textStyle14.copyWith(
              color: AppColors.completePaymentGrey,
            ),
          ),
          SizedBox(
            height: 48.h,
          ),
          defaultButtom(
            function: () {},
            color: AppColors.primary,
            text:'تحويل رصيد',
          ),
        ],
      ),
    );
  }
}
