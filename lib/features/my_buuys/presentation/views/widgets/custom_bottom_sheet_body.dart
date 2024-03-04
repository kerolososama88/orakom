import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/assets_manager.dart';
import '../../../../../core/constant/text_style.dart';
import '../../../../../core/widgets/defaultButtom.dart';
import 'custom_rating_bar.dart';

class CustomBottomSheetBody extends StatelessWidget {
  const CustomBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 397.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(71.r),
          topLeft: Radius.circular(71.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 29.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 24.0.w, left: 134.w,bottom: 18.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Image.asset(
                      width: 24.w,
                      height: 24.h,
                      AssetsManager.close,
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  Text(
                    'إضافة تقييم',
                    style: Style.textStyle16.copyWith(
                      color: AppColors.cartGreyText,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'قم بتقييم المنتج',
              style: Style.textStyle15.copyWith(
                color: AppColors.creditCardBlack,
              ),
            ),
            const CustomRatingBar(),
            Padding(
              padding: EdgeInsets.only(
                right: 16.0.w,
                left: 17.w,
                top: 21.h,
                bottom: 42.h,
              ),
              child: TextFormField(
                onTapOutside: (v) => FocusScope.of(context).unfocus(),
                controller: TextEditingController(),
                decoration: InputDecoration(
                  focusedBorder:const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.bottomSheetBorderColor,
                    )
                  ),
                  contentPadding:
                      EdgeInsets.fromLTRB(14.0.w, 36.0.h, 14.0.h, 60.0.h),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.sp, color: AppColors.bottomSheetBorderColor),
                    borderRadius: BorderRadius.circular(
                      7.r,
                    ),
                  ),
                  hintText: "اضف تعليق هنا..",
                  hintStyle: Style.textStyle12,
                  // hintTextDirection:Te ,
                ),
              ),
            ),
            defaultButtom(
              function: () {},
              color: AppColors.primary,
              text: 'تقييم',
            ),
          ],
        ),
      ),
    );
  }
}
