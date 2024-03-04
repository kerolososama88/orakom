import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';

class CustomItemPageMore extends StatelessWidget {
  const CustomItemPageMore({super.key, required this.text, required this.image, required this.onTap, required this.color});

  final String text;
  final String image;
  final GestureTapCallback onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Padding(
        padding: EdgeInsets.only(left: 31.0.w,right: 31.w,bottom: 12.h),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(6.h),
              width: 30.w,
              height: 30.h,
              decoration:   BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                image,
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
            Text(
              text,
              style: Style.textStyle12.copyWith(
                color: AppColors.itemTextGround,
              ),
            ),
            const Spacer(),
            const Icon(
              size: 16,
              color: AppColors.itemBackGround,
              Icons.arrow_back_ios_new_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
