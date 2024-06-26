import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';

Widget defaultButtom({
  double? width,
  double ?height,
  required Function() function,
  required Color color,
  required String text,
  bool isUpperCase = true,
}) =>
    Container(
      width: 313.w,
      height: 56.h,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton(
        onPressed: function,
        child: Text(
          text,
          style: Style.textStyle16,
        ),
      ),
    );