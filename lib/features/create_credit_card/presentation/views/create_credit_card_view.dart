import 'package:flutter/material.dart';
import 'package:orakom/features/create_credit_card/presentation/views/widgets/create_credit_card_body.dart';

class CreateCreditCardView extends StatelessWidget {
  const CreateCreditCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CreateCreditCardBody(),
    );
  }
}
