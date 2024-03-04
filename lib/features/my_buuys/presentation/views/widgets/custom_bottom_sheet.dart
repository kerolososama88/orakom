import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/text_style.dart';
import 'custom_bottom_sheet_body.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 39.h,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(8.r),
        ),
      ),
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
          'تحميل',
          style: Style.textStyle14.copyWith(
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
