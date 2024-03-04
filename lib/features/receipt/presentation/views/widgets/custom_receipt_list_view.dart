import 'package:flutter/material.dart';
import 'package:orakom/features/receipt/presentation/views/widgets/custom_receipt_item.dart';

class CustomReceiptListView extends StatelessWidget {
  const CustomReceiptListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return const CustomReceiptItem();
        },
      ),
    );
  }
}
