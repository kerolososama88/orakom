
import 'package:flutter/material.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';
import 'package:orakom/core/widgets/logo_auth.dart';
import 'package:orakom/features/auth/presentation/active_code/presentation/views/widgets/active_code_text.dart';
import 'package:orakom/features/auth/presentation/active_code/presentation/views/widgets/code_action.dart';
import 'package:orakom/features/auth/presentation/active_code/presentation/views/widgets/code_counter.dart';
import 'package:orakom/features/auth/presentation/active_code/presentation/views/widgets/pin_code.dart';

class ActiveCodeBody extends StatelessWidget {
  const ActiveCodeBody({super.key});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: const Column(
          children: [
            CustomAppbarArrow(
              text: 'تفعيل الحساب',
            ),
            LogoAuth(),
            ActiveCodeText(),
            PinCode(),
            CodeCounter(),
            CodeAction(),
          ],
        ),
      ),
    );
  }
}
