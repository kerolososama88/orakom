import 'package:flutter/material.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';
import 'package:orakom/core/widgets/image_profile.dart';
import 'package:orakom/features/my_account/presentation/views/widgets/my_account_form.dart';

import 'my_account_action.dart';

class MyAccountBody extends StatelessWidget {
  const MyAccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbarArrow(text: 'تعديل الحساب',),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ImageProfile(),
                MyAccountForm(),
                MyAccountAction(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
