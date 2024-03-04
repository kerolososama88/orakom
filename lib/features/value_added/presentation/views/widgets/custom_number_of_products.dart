import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';

class CustomNumberOfProducts extends StatelessWidget {
  const CustomNumberOfProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 18.w, bottom: 16.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'عدد المنتجات (2)',
                style: Style.textStyle12.copyWith(
                  color: AppColors.blackBlack,
                ),
              ),
              Text(
                'طريقة الدفع : اونلاين',
                style: Style.textStyle12.copyWith(
                  color: AppColors.blackBlack,
                ),
              ),
            ],
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical:16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'المبلغ الإجمالي للمنتجات',
                  style: Style.textStyle11.copyWith(
                    color: AppColors.blackBlack,
                  ),
                ),
                Text(
                  '1500 ريال',
                  style: Style.textStyle11.copyWith(
                    color: AppColors.completePaymentGrey,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'القيمة المضافة (VAT) %15',
                style: Style.textStyle11.copyWith(
                  color: AppColors.blackBlack,
                ),
              ),
              Text(
                '75 ريال',
                style: Style.textStyle11.copyWith(
                  color: AppColors.completePaymentGrey,
                ),
              ),
            ],
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical:16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'المبلغ الإجمالي يتضمن الضريبة',
                  style: Style.textStyle11.copyWith(
                    color: AppColors.blackBlack,
                  ),
                ),
                Text(
                  '1600 ريال',
                  style: Style.textStyle11.copyWith(
                    color: AppColors.completePaymentGrey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
