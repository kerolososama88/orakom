import 'package:flutter/material.dart';
import 'package:orakom/core/widgets/custom_appbar.dart';
import 'package:orakom/core/widgets/logo_auth.dart';
import 'package:orakom/features/auth/presentation/active_code/presentation/views/widgets/active_code_text.dart';
import 'package:orakom/features/auth/presentation/restore_password/presentation/views/widgets/restore_password_action.dart';
import 'package:orakom/features/auth/presentation/restore_password/presentation/views/widgets/restore_password_form.dart';

class RestorePasswordBody extends StatelessWidget {
  const RestorePasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(text: 'إستعادة كلمة المرور',),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                LogoAuth(),
                ActiveCodeText(),
                RestorePasswordForm(),
                RestorePasswordAction(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
