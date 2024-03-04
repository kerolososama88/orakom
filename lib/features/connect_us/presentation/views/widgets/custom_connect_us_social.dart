import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/assets_manager.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/text_style.dart';
import 'custom_connect_us_circle.dart';

class CustomConnectUsSocial extends StatelessWidget {
  const CustomConnectUsSocial({super.key,});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 40.h),
          child: Text(
            'أو عبر وسائل التواصل',
            style: Style.textStyle15.copyWith(
              color: AppColors.completePaymentGrey,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.w,vertical: 30.h),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomConnectUsCircle(image: AssetsManager.face,),
              CustomConnectUsCircle(image: AssetsManager.face,),
              CustomConnectUsCircle(image: AssetsManager.twitter,),
              CustomConnectUsCircle(image: AssetsManager.snapchat,),
            ],
          ),
        ),
      ],
    );
  }
}
