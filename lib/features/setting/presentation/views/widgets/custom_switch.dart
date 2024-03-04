import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/text_style.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch(
      {super.key,
      required this.text,
      required this.value,
      required this.onChanged});

  final String text;
  final bool value;
  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: Style.textStyle14.copyWith(
            color: AppColors.completePaymentGrey,
          ),
        ),
        const Spacer(),
        Transform.scale(
          scale: 0.5.h,
          child: CupertinoSwitch(
            activeColor:AppColors.switchColor,
            trackColor: AppColors.primary,
            value: value,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
// inactiveTrackColor: AppColors.primary,
// activeTrackColor: AppColors.switchColor,
// thumbColor: const MaterialStatePropertyAll<Color>(Colors.white),
// value: value,
// onChanged: onChanged,
