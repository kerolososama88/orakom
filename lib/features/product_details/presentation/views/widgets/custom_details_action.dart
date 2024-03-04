import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/assets_manager.dart';

import '../../../../../core/constant/text_style.dart';

class CustomDetailsAction extends StatelessWidget {
  const CustomDetailsAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:  31.w,right:  31.w,bottom:  31.w),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 313.w,
          height: 56.h,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'أضف للسلة',
                style: Style.textStyle16,
              ),
              SizedBox(
                width: 6.w,
              ),
              Image.asset(
                width: 19.w,
                height: 14.h,
                AssetsManager.shopping,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
