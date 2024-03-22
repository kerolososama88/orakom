import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/assets_manager.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key, required this.bottom});
  final double bottom;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(right: 67.0.w,left:67.0.w, top:37.h,bottom:bottom),
      child: Image.asset(AssetsManager.logo,),
    );
  }
}
