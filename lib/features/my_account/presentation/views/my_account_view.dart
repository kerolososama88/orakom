import 'package:flutter/material.dart';
import 'package:orakom/features/my_account/presentation/views/widgets/my_account_body.dart';

class MyAccountView extends StatelessWidget {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyAccountBody(),
    );
  }
}
