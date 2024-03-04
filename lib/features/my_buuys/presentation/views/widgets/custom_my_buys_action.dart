import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/text_style.dart';
import 'custom_bottom_sheet_body.dart';

class CustomMyBuysAction extends StatelessWidget {
  const CustomMyBuysAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 39.h,
            decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8.r),
                )),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'تحميل',
                style: Style.textStyle14.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 1.w,
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 39.h,
            decoration: BoxDecoration(
                color: AppColors.blueColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.r),
                )),
            child: TextButton(
              onPressed: () {
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    return const CustomBottomSheetBody();
                  },
                );
              },
              child: Text(
                'تقييم',
                style: Style.textStyle14.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
