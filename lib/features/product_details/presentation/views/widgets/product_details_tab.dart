import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';

class ProductDetailsTabPar extends StatelessWidget {
  const ProductDetailsTabPar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: Colors.transparent,
      indicator: BoxDecoration(
        color: AppColors.blueColor,
        borderRadius: BorderRadius.circular(5.r),
      ),
      indicatorPadding: EdgeInsets.symmetric(horizontal: 5.w),
      labelColor: AppColors.whiteColor,
      unselectedLabelColor: AppColors.greyText,
      physics: const NeverScrollableScrollPhysics(),
      tabs: [
        Tab(
          height: 42.h,
          text: 'التفاصيل',
        ),
        Tab(
          height: 42.h,
          text: 'التقييمات',
        ),
      ],
    );
  }
}
