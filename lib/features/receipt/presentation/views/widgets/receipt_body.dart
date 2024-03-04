import 'package:flutter/material.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';

import 'custom_receipt_list_view.dart';

class ReceiptBody extends StatelessWidget {
  const ReceiptBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbarArrow(text: 'الفواتير',),
        CustomReceiptListView(),
      ],
    );
  }
}
