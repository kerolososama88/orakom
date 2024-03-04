import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/text_style.dart';

class CustomExpansionTitleCommonQuestions extends StatelessWidget {
  const CustomExpansionTitleCommonQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      child: ExpansionTile(
        // trailing: const Icon(
        //   Icons.add,
        //   color: AppColors.whiteColor,
        // ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        title: Text(
          'هذا النص هو مثال لنص يمكن أن يستبدل',
          style: Style.textStyle12.copyWith(
            color: AppColors.whiteColor,
          ),
        ),
        iconColor: AppColors.whiteColor,
        collapsedIconColor: AppColors.whiteColor,
        backgroundColor: AppColors.primary,
        collapsedBackgroundColor: AppColors.primary,
        children: [
          Container(
            margin: EdgeInsets.only(left: 12.w,right: 12.w,bottom: 12.h),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding:  EdgeInsets.only(left: 14.w,right: 10.w,top: 12.h,bottom: 10.h),
              child: Text(
                'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد هذا النص هو هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد هذا النص هو مثال لنص يمكن أن',
              style: Style.textStyle12.copyWith(
                color: AppColors.blackBlack,
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
