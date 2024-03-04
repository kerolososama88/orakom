import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/text_style.dart';

class SeeMoreText extends StatelessWidget {
  const SeeMoreText({super.key, required this.onTap});

  final GestureTapCallback onTap;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 16.0.h),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'مشاهدة المزيد',
              style: Style.textStyle14.copyWith(
                color: AppColors.primary,
              ),
            ),
            SizedBox(
              width: 8.2.w,
            ),
             const Icon(
               color:AppColors.primary,
              Icons.arrow_back_ios_new,
            ),
          ],
        ),
      ),
    );
  }
}
