import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/widgets/defaultButtom.dart';

class AddCreditCardAction extends StatelessWidget {
  const AddCreditCardAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.0.h),
      child: defaultButtom(
        function: () {
          Navigator.of(context).pop();
        },
        color: AppColors.primary,
        text: 'إضافة البطاقة',
      ),
    );
  }
}
