import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';
import 'package:orakom/core/widgets/logo_auth.dart';
import 'package:orakom/features/auth/presentation/active_code/presentation/views/widgets/active_code_text.dart';
import 'package:orakom/features/auth/presentation/new_password/presentation/views/widgets/new_password_form.dart';

import 'new_password_action.dart';

class NewPasswordBody extends StatelessWidget {
  const NewPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomAppbarArrow(
            text: 'إستعادة كلمة المرور',
          ),
          LogoAuth(
            bottom: 24.h,
          ),
          const ActiveCodeText(),
          const NewPasswordForm(),
          const NewPasswordAction(),
        ],
      ),
    );
  }
}
