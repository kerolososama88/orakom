import 'package:flutter/material.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/widgets/defaultButtom.dart';
import 'package:orakom/features/layout/presentation/view/layout.dart';

class CodeAction extends StatelessWidget {
  const CodeAction({super.key});

  @override
  Widget build(BuildContext context) {
    return defaultButtom(
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
    );
  }
}
