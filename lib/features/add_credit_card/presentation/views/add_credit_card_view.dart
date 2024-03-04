import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/add_credit_card/presentation/views/widgets/add_credit_card_body.dart';

import '../manger/add_credit_card_cubit.dart';

class AddCreditCardView extends StatelessWidget {
  const AddCreditCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddCreditCardCubit(),
      child: const Scaffold(
        body: AddCreditCardBody(),
      ),
    );
  }
}
