import 'package:flutter/material.dart';
import 'package:orakom/features/cart/presentation/views/widgets/cart_list_view_item.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
         physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
        return  const CartListViewItem();
      },
        itemCount: 5,
      ),
    );
  }
}
