import 'package:flutter/material.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';

import 'add_credit_card_action.dart';
import 'add_credit_card_form.dart';

class AddCreditCardBody extends StatelessWidget {
  const AddCreditCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomAppbarArrow(text: 'إضافة بطاقة إئتمان',),
          AddCreditCardForm(),
          AddCreditCardAction(),
        ],
      ),
    );
  }
}
