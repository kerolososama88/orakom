import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';

Widget customTextFieldAuth({
  required TextEditingController controller,
  String? hintText,
  String? text,
  dynamic prefixIcon,
  IconData? suffixIcon,
  dynamic validator,
  TextInputType? type,
  bool? obscureText,
   VoidCallback? onPressed,
   double? width,
   double? height,
  TapRegionCallback?onTapOutside,


}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text??'',
          style: Style.textStyle14.copyWith(
            color: AppColors.textBlack,
          ),
        ),
        TextFormField(
          onTapOutside: onTapOutside,
          validator: (v) {
            return v;
          },
          controller: controller,
          keyboardType: type,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(0.0, 16.0, 15.0, 22.0),
            fillColor: AppColors.fill,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                16.r,
              ),
            ),
            hintText: hintText,
            hintStyle: Style.textStyle12,
            suffixIcon: IconButton(
              color: AppColors.greyColor,
              onPressed: onPressed,
              icon: Icon(
                suffixIcon ,
              ),
            ),
            // prefixIcon: IconButton(
            //   onPressed: onPressed,
            //   icon: Icon(
            //     prefixIcon,
            //     color: const Color.fromRGBO(188, 188, 188, 1),
            //   ),
            // ),
          ),
        ),
      ],
    );