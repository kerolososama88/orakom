import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';

class CustomConnectUsCircle extends StatelessWidget {
  const CustomConnectUsCircle({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      width: 48.w,
      height: 48.h,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        image,
      ),
    );
  }
}
