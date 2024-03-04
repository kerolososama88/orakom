import 'package:flutter/material.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/widgets/defaultButtom.dart';

class ComplaintsAction extends StatelessWidget {
  const ComplaintsAction({super.key});

  @override
  Widget build(BuildContext context) {
    return defaultButtom(
      function: () {},
      color: AppColors.primary,
      text: 'إرسال',
    );
  }
}
