import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';

class SettingText extends StatelessWidget {
  const SettingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.h,horizontal: 12.w),
      child: Text(
        textAlign: TextAlign.center,
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربي',
      style: Style.textStyle13.copyWith(
        color: AppColors.completePaymentGrey,
      ),
      ),
    );
  }
}
