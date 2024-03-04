import 'package:flutter/material.dart';
import 'package:orakom/features/receipt/presentation/views/widgets/receipt_body.dart';

class ReceiptView extends StatelessWidget {
  const ReceiptView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReceiptBody(),
    );
  }
}
