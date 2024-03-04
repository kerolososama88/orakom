import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/assets_manager.dart';
import '../../../../../core/constant/text_style.dart';

class CustomProductDetailsSliderDetails extends StatelessWidget {
  const CustomProductDetailsSliderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 10.w),
          child: Text(
            'المرجع الكامل في التحكم الكهربائي الصناعي',
            style: Style.textStyle13.copyWith(color: AppColors.blackBlack),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 5.w),
          child: Row(
            children: [
              Text(
                '150 ر.س',
                style: Style.textStyle13.copyWith(
                  color: AppColors.primary,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                '150 ر.س',
                style: Style.textStyle13.copyWith(
                  color: AppColors.grayFavColor,
                ),
              ),
              SizedBox(
                width: 35.w,
              ),
              Image.asset(width: 18.h, height: 18.h, AssetsManager.staar),
              SizedBox(
                width: 5.w,
              ),
              Text(
                '4.5',
                style: Style.textStyle13.copyWith(color: AppColors.blackBlack),
              ),
              SizedBox(
                width: 38.w,
              ),
              Image.asset(
                width: 16.w,
                height: 15.h,
                AssetsManager.heartt,
              ),
              SizedBox(
                width: 6.w,
              ),
              Text(
                'أضف المفضلة',
                style: Style.textStyle11.copyWith(
                  color: AppColors.cartGreyText,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
