import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/widgets/custom_appbar.dart';
import 'package:orakom/core/widgets/logo_auth.dart';
import 'package:orakom/features/auth/presentation/login/presentation/views/widgets/action_auth.dart';
import 'package:orakom/features/auth/presentation/login/presentation/views/widgets/login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          const CustomAppbar(
            text: 'تسجيل الدخول',
          ),
          LogoAuth(bottom:  53.h,),
          const LoginForm(),
          const ActionAuth(),
          // DropDown(),
        ],
      ),
    );
  }
}
