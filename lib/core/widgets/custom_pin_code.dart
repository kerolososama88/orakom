import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/text_style.dart';

class CustomPinCode extends StatelessWidget {
  const CustomPinCode({super.key, required this.onComplete});

  final ValueChanged onComplete;

  @override
  Widget build(BuildContext context) {
    return PinCodeFields(
      length: 4,
      fieldBorderStyle: FieldBorderStyle.square,
      responsive: false,
      fieldHeight:48.0.h,
      fieldWidth: 67.0.w,
      borderWidth:1.0.sp,
      activeBorderColor: const Color.fromRGBO(61, 155, 114, 1),
      activeBackgroundColor:  const Color.fromRGBO(245, 245, 245, 1),
      borderRadius: BorderRadius.circular(10.0.r),
      keyboardType: TextInputType.number,
      autoHideKeyboard: true,
      fieldBackgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      borderColor: const Color.fromRGBO(245, 245, 245, 1),
      textStyle: Style.textStyleBlack16,
      onComplete: onComplete,
    );
  }
}
