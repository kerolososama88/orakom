import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/features/portfolio/presentation/views/widgets/custom_cache_view.dart';
import 'package:orakom/features/portfolio/presentation/views/widgets/custom_points_view.dart';

import '../../../../../core/widgets/custom_appbar_arrow.dart';

class MyTabPar extends StatelessWidget {
  const MyTabPar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppbarArrow(text: 'المحفظة',),
            Padding(
              padding:EdgeInsets.only(top: 32.0.h,right: 17.w,left: 17.w),
              child: Container(
                height: 42.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: AppColors.greyText,
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  tabs: const [
                    Tab(
                      text: 'المحفظة',
                    ),
                    Tab(
                      text: 'نقاطي',
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  CustomCacheView(),
                  CustomPointsView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
