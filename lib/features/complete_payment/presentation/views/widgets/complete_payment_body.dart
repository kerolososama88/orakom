import 'package:flutter/material.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';
import 'package:orakom/features/complete_payment/presentation/views/widgets/cutom_complete_payment_details.dart';

import 'complete_payment_action.dart';
import 'complete_payment_code.dart';
import 'custom_payment_method.dart';

class CompletePaymentBody extends StatelessWidget {
  const CompletePaymentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomAppbarArrow(text: 'إتمام الدفع',),
          CompletePaymentCode(),
          CustomPaymentMethod(),
          CustomCompletePaymentDetails(),
          CompletePaymentAction(),
        ],
      ),
    );
  }
}
