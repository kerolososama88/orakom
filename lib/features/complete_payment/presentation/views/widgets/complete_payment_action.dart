import 'package:flutter/material.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/widgets/defaultButtom.dart';
import 'package:orakom/features/complete_payment/presentation/views/widgets/show_dialog.dart';


class CompletePaymentAction extends StatelessWidget {
  const CompletePaymentAction({super.key});

  @override
  Widget build(BuildContext context) {
    return defaultButtom(
      function: () {
        showDialog(
          context: context,
          builder: (context) {
            return const DialogBody();
          },
        );
      },
      color: AppColors.primary,
      text: 'إتمام الطلب',
    );
  }
}
