import 'package:flutter/material.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';

import 'edite_credit_card_action.dart';
import 'edite_credit_card_form.dart';

class EditeCreditCardBody extends StatelessWidget {
  const EditeCreditCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomAppbarArrow(text: 'تعديل بيانات البطاقة',),
          EditeCreditCardForm(),
          EditeCreditCardAction(),
        ],
      ),
    );
  }
}
