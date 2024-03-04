import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/widgets/border_bottom.dart';
import 'package:orakom/core/widgets/defaultButtom.dart';

class MyAccountAction extends StatelessWidget {
  const MyAccountAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: 28.0.w, right: 28.w, top: 29.h, bottom: 24.h),
          child: BorderBottom(
            onTap: () {},
            text: 'تغيير كلمة المرور',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 40.0.h),
          child: defaultButtom(
            function: () {},
            color: AppColors.primary,
            text: 'حفظ',
          ),
        ),
      ],
    );
  }
}
