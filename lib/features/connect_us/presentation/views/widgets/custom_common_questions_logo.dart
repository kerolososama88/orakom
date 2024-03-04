import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/assets_manager.dart';

class CustomConnectUsTapLogo extends StatelessWidget {
  const CustomConnectUsTapLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 23.h),
      child: Image.asset(
        width: 101.w,
        height: 96.h,
        AssetsManager.questionsbro,
      ),
    );
  }
}
