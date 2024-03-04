import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/text_style.dart';

class CustomPriceHome extends StatelessWidget {
  const CustomPriceHome({super.key, required this.price});

  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 8.0.h,
        bottom: 9.5.h,
        right: 7.w,
      ),
      child: Align(
        alignment: AlignmentDirectional.topStart,
        child: Text(
          price,
          style: Style.textStyle13.copyWith(
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
