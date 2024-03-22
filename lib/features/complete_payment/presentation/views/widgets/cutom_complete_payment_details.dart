import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';

class CustomCompletePaymentDetails extends StatelessWidget {
  const CustomCompletePaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 27.h, right: 12.w, left: 16.w, bottom: 35.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'تفاصيل الدفع',
            style: Style.textStyle14.copyWith(
              color: AppColors.completePaymentGrey,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 14.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'مجموع الطلبات (3 منتجات)',
                  style: Style.textStyle13.copyWith(
                    color: AppColors.cartGreyText,
                  ),
                ),
                Text(
                  '1500 ر.س',
                  style: Style.textStyle15.copyWith(
                    color: AppColors.cartGreyText,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'كود الخصم',
                style: Style.textStyle13.copyWith(
                  color: AppColors.cartGreyText,
                ),
              ),
              Text(
                '100 ر.س',
                style: Style.textStyle15.copyWith(
                  color: AppColors.cartGreyText,
                ),
              ),
            ],
          ),
           Divider(
            thickness: 1.sp,
            color: AppColors.greyText,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'الإجمالي  :',
                style: Style.textStyle16.copyWith(
                  color: AppColors.blackBlack,
                ),
              ),
              Text(
                '1490 ر.س',
                style: Style.textStyle17.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 35.h,left: 26.w,right: 25.w),
            child: Text(
              'يرجى مراجعة طلبك. بإرسال طلبك ، فإنك توافق على شروط الخدمة وسياسة الخصوصية الخاصة بنا',
              style: Style.textStyle12.copyWith(
                color: AppColors.cartGreyText,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
