import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';
import 'package:orakom/core/widgets/logo_auth.dart';
import 'package:orakom/features/auth/presentation/active_code/presentation/views/widgets/active_code_text.dart';
import 'package:orakom/features/auth/presentation/restore_password/presentation/views/widgets/restore_password_action.dart';
import 'package:orakom/features/auth/presentation/restore_password/presentation/views/widgets/restore_password_form.dart';

class RestorePasswordBody extends StatelessWidget {
  const RestorePasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const CustomAppbarArrow(text: 'إستعادة كلمة المرور',),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                LogoAuth(bottom: 24.h,),
                const ActiveCodeText(),
                const RestorePasswordForm(),
                const RestorePasswordAction(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
