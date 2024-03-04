import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/assets_manager.dart';
import 'package:orakom/core/constant/text_style.dart';

class CreateCreditCard extends StatelessWidget {
  const CreateCreditCard({super.key, required this.color, required this.onTap});
  final Color color;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 30.0.h),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height:158.h ,
          width: 320.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
          color: color,
          ),
          child: Padding(
            padding:EdgeInsets.only(left: 28.0.w,top: 47.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  width: 39.62.w,
                  height: 29.9.h,
                  AssetsManager.sim,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h,right: 32.w),
                  child: Row(
                    children: [
                      Image.asset(
                        width: 39.62.w,
                        height: 29.9.h,
                        AssetsManager.mastercard,
                      ),
                      const Spacer(),
                      Text(
                        '1245',
                        style: Style.textStyle15.copyWith(
                          color: AppColors.whiteColor,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Padding(
                        padding:EdgeInsets.only(top: 7.0.h),
                        child: Text(
                          '****',
                          style: Style.textStyle15.copyWith(
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
