import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/widgets/defaultButtom.dart';
import 'package:orakom/features/layout/presentation/view/layout.dart';

class NewPasswordAction extends StatelessWidget {
  const NewPasswordAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 36.0.h, horizontal: 31.w),
      child: defaultButtom(
        function: () {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const Layout(tabIndex: 0),
            ),
            (route) => false,
          );
        },
        color: AppColors.primary,
        text: 'الدخول',
      ),
    );
  }
}
