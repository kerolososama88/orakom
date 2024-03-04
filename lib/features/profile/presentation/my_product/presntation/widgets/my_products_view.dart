import 'package:flutter/material.dart';
import 'package:orakom/core/widgets/search_filter.dart';
import 'my_product_list_view.dart';

class MyProductsView extends StatelessWidget {
  const MyProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SearchFilter(),
        MyProductListView(),
      ],
    );
  }
}
