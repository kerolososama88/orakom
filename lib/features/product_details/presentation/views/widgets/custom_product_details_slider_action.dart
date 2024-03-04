import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/text_style.dart';

class CustomProductDetailsSliderAction extends StatelessWidget {
  const CustomProductDetailsSliderAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 42.h,
      decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8.r),
            bottomRight: Radius.circular(8.r),
          )),
      child: TextButton(
        onPressed: () {},
        child: Text(
          'معاينة',
          style: Style.textStyle14.copyWith(
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
