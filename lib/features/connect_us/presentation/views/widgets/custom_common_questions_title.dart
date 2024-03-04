import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';

class CustomCommonQuestionsTitle extends StatelessWidget {
  const CustomCommonQuestionsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 18.w,right: 17.w,bottom: 25.h),
      child: Text(
        textAlign: TextAlign.center,
        'هل تواجه مشكلة في ملف؟ يمكنك التواصل معنا بكل سهولة للحصول على المساعدة - يسعدنا دائمًا تقديم المساعدة',
        style: Style.textStyle12.copyWith(
          color: AppColors.completePaymentGrey,
        ),
      ),
    );
  }
}
