import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/widgets/defaultButtom.dart';
import 'package:orakom/features/auth/presentation/new_password/presentation/views/new_password_view.dart';

class RestorePasswordAction extends StatelessWidget {
  const RestorePasswordAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 36.0.h,horizontal: 31.w),
      child: defaultButtom(
        function: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const NewPasswordView(),
            ),
          );
        },
        color: AppColors.primary,
        text: 'إرسال',
      ),
    );
  }
}
