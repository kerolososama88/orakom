import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';
import 'package:styled_divider/styled_divider.dart';

class CustomTaxNumber extends StatelessWidget {
  const CustomTaxNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 21.w, left: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'الرقم الضريبي',
                style: Style.textStyle11.copyWith(
                  color: AppColors.blackBlack,
                ),
              ),
              const Spacer(),
              Text(
                '١٢١٢١٢٢٢٢٣٢٣١٢٢',
                style: Style.textStyle11.copyWith(
                  color: AppColors.blackBlack,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0.h),
            child: Row(
              children: [
                Text(
                  'رقم الفاتورة : 10201',
                  style: Style.textStyle11.copyWith(
                    color: AppColors.completePaymentGrey,
                  ),
                ),
                const Spacer(),
                Text(
                  'التاريخ: 10/3/2022',
                  style: Style.textStyle11.copyWith(
                    color: AppColors.completePaymentGrey,
                  ),
                ),
              ],
            ),
          ),
          Text(
            'وقت الطلب :PM 5:30',
            style: Style.textStyle11.copyWith(
              color: AppColors.completePaymentGrey,
            ),
          ),
          const StyledDivider(
            color: AppColors.greyText,
            height: 50,
            thickness: 2,
            lineStyle: DividerLineStyle.dotted,
            indent: 0,
            endIndent: 0,
          ),
        ],
      ),
    );
  }
}
