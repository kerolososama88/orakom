import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';

class PortfolioTabBar extends StatelessWidget {
  const PortfolioTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: Colors.transparent,
      indicator: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(5.r),
      ),
      indicatorPadding: EdgeInsets.symmetric(horizontal: 5.w),
      labelColor: AppColors.whiteColor,
      unselectedLabelColor: AppColors.greyText,
      tabs: [
        Tab(
          height: 42.h,
          text: 'المحفظة',
        ),
        Tab(
          height: 42.h,
          text: 'نقاطي',
        ),
      ],
    );
  }
}
