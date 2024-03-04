import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/app_colors.dart';
import '../constant/text_style.dart';

class CustomTextFieldPass extends StatelessWidget {
  const CustomTextFieldPass({super.key,
    required this.obscureText,
    required this.controller,
    required this.suffixIcon,
    required this.text, this.hintText});

  final bool obscureText;
  final TextEditingController controller;
  final Widget suffixIcon;
  final String text;
  final String? hintText;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            text,
            style: Style.textStyle14.copyWith(
              color: AppColors.textBlack,
            ),
          ),
        ),
        SizedBox(
          height: 11.34.h,
        ),
        TextFormField(
          onTapOutside: (v) => FocusScope.of(context).unfocus(),
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            hintText:hintText,
            hintStyle: Style.textStyle12.copyWith(
              color: AppColors.hintTextColor
            ),
            fillColor: AppColors.fill,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16.r),
            ),
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
