import 'package:flutter/material.dart';
import 'package:orakom/core/widgets/custom_appbar.dart';
import 'package:orakom/features/cart/presentation/views/widgets/cart_action.dart';

import 'cart_list_view.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(text: 'السلة'),
        CartListView(),
        CartAction(),
      ],
    );
  }
}
