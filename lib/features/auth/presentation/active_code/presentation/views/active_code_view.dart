import 'package:flutter/material.dart';
import 'package:orakom/features/auth/presentation/active_code/presentation/views/widgets/active_code_body.dart';

class ActiveCodeView extends StatelessWidget {
  const ActiveCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ActiveCodeBody(),
    );
  }
}
