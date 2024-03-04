import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_divider/styled_divider.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/text_style.dart';

class CustomValueDetails extends StatelessWidget {
  const CustomValueDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'تفاصيل الطلب',
            style: Style.textStyle14.copyWith(
              color: AppColors.blackBlack,
            ),
          ),
          Row(
            children: [
              Text(
                'المرجع الكامل في التحكم الكهربائي الصناعي',
                style: Style.textStyle11.copyWith(
                  color: AppColors.completePaymentGrey,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 80.w,top: 30.h),
                child: Text(
                  '1500 ريال',
                  style: Style.textStyle11.copyWith(
                    color: AppColors.completePaymentGrey,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'المرجع الكامل في التحكم الكهربائي الصناعي',
                style: Style.textStyle11.copyWith(
                  color: AppColors.completePaymentGrey,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 80.w,top: 30.h),
                child: Text(
                  '1500 ريال',
                  style: Style.textStyle11.copyWith(
                    color: AppColors.completePaymentGrey,
                  ),
                ),
              ),
            ],
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
