import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';

class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: 26.w,
      glow: false,
      initialRating: 1,
      minRating: 1,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 5.0.w),
      onRatingUpdate: (rating) {},
      itemBuilder: (BuildContext context, int index) => const Icon(
        Icons.star,
        color: AppColors.starOrange,
      ),
    );
  }
}
