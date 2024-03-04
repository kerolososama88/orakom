import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import 'custom_product_details_slider_action.dart';
import 'custom_product_details_slider_details.dart';
import 'custom_product_details_slider_photo.dart';

class CustomProductDetailsSlider extends StatelessWidget {
  const CustomProductDetailsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.r),
          border: Border.all(
            color: AppColors.borderColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomProductDetailsSliderPhoto(),
            const CustomProductDetailsSliderDetails(),
            const CustomProductDetailsSliderAction(),
          ],
        ),
      ),
    );
  }
}
