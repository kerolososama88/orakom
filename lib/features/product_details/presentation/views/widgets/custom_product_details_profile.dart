import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/assets_manager.dart';
import 'package:orakom/core/constant/text_style.dart';
import 'package:orakom/features/profile/presentation/view/profile_view.dart';

class CustomProductDetailsProfile extends StatelessWidget {
  const CustomProductDetailsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w, top: 17.h, bottom: 15.h),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ProfileView(),
            ),
          );
        },
        child: Row(
          children: [
            Container(
              width: 64.w,
              height: 64.h,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(4.r),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://www.perfocal.com/blog/content/images/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'منى المنشاوي',
                    style: Style.textStyle13.copyWith(
                      color: AppColors.blackTitleText,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 7.h),
                    child: Row(
                      children: [
                        Text(
                          '500 متابع',
                          style: Style.textStyle12.copyWith(
                            color: AppColors.cartGreyText,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.w, right: 14.w),
                          child: Image.asset(
                            height: 12.h,
                            width: 12.w,
                            AssetsManager.starr,
                          ),
                        ),
                        Text(
                          '4.4',
                          style: Style.textStyle12.copyWith(
                            color: AppColors.cartGreyText,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                          width: 12.w, height: 12.h, AssetsManager.follow),
                      SizedBox(
                        width: 7.w,
                      ),
                      Text(
                        'متابعة',
                        style: Style.textStyle12.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                      SizedBox(
                        width: 140.w,
                      ),
                      Image.asset(
                          width: 12.w, height: 12.h, AssetsManager.report),
                      SizedBox(
                        width: 7.w,
                      ),
                      Text(
                        'الإبلاغ',
                        style: Style.textStyle12.copyWith(
                          color: AppColors.reportColor,
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
    );
  }
}
