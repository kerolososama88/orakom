import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/assets_manager.dart';
import 'package:orakom/core/constant/text_style.dart';

class NotItem extends StatelessWidget {
  const NotItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(bottom: 11.h,left: 16.w,right: 16.w),
      child: SizedBox(
        height: 63.h,
        child: Card(
          shadowColor:AppColors.shadowColor ,
          color: AppColors.backGroundIcon,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: Container(
                  width: 40.w,
                  height: 40.h,
                  padding: EdgeInsets.all(10.h),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(.3),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(AssetsManager.bell),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 12.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'هذا النص هو مثال لنص يمكن ان يستبدل بنص اخر',
                      style: Style.textStyle12.copyWith(
                        color: AppColors.itemTextGround,
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          height: 11.h,
                          width: 11.w,
                          AssetsManager.clock,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          'منذ : 5 دقائق',
                          style: Style.textStyle11.copyWith(
                            color: AppColors.itemBackGround,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
