import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/complete_payment/presentation/manger/complete_payment_cubit.dart';
import 'package:orakom/features/complete_payment/presentation/views/widgets/complete_payment_body.dart';

class CompletePaymentView extends StatelessWidget {
  const CompletePaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CompletePaymentCubit(),
      child: const Scaffold(
        body: CompletePaymentBody(),
      ),
    );
  }
}
