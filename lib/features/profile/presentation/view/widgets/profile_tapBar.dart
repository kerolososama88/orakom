import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';

class ProfileTapBar extends StatelessWidget {
  const ProfileTapBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: AppColors.primary,
      padding: EdgeInsets.all(10.w),
      labelColor: AppColors.primary,
      unselectedLabelColor: AppColors.creditCardBlack,
      tabs: [
        Tab(
          height: 42.h,
          text: 'منتجاتي',
        ),
        Tab(
          height: 42.h,
          text: 'تقييماتي',
        ),
        Tab(
          height: 42.h,
          text: 'بياناتي',
        ),
      ],
    );
  }
}
