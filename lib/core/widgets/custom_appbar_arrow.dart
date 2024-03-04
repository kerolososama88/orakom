import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/assets_manager.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';

class CustomAppbarArrow extends StatelessWidget {
  const CustomAppbarArrow({
    super.key,
    required this.text,
    this.imageAssets,
  });

  final String text;
  final String? imageAssets;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 103.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.r),
              bottomRight: Radius.circular(30.r),
            ),
            color: AppColors.primary,
          ),
          child: Center(
            child: Text(
              text,
              style: Style.textStyle16,
            ),
          ),
        ),
        PositionedDirectional(
          top: 39.h,
          start: 13.w,
          child: InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Image.asset(
              height: 24.h,
              width: 24.w,
              AssetsManager.arrow,
            ),
          ),
        ),
      ],
    );
  }
}
