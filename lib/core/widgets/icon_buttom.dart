
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget iconButtom({
  double? width,
  String? assets,
  double ?height,
  double ?iconHeight,

  required Function() function,
   Color? color,
  bool isUpperCase = true,
}) =>
    InkWell(
      onTap: function,
      child: Container(
        width: 41.w,
        height: 39.h,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(61, 155, 114, 1),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: ImageIcon(
          color:Colors.white,
          AssetImage(
            '$assets',
          ),
        ),
      ),
    );