import 'package:flutter/material.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';
import 'package:orakom/features/edite_credit_card/presentation/views/edite_credit_card_view.dart';

import 'create_credit_card.dart';
import 'credit_card_action.dart';

class CreateCreditCardBody extends StatelessWidget {
  const CreateCreditCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbarArrow(
          text: 'إنشاء حساب',
        ),
        CreateCreditCard(
          color: AppColors.creditCardGreen,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const EditeCreditCardView(),
              ),
            );
          },
        ),
        CreateCreditCard(
          color: AppColors.creditCardBlack,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const EditeCreditCardView(),
              ),
            );
          },
        ),
        const CreditCardAction(),
      ],
    );
  }
}
