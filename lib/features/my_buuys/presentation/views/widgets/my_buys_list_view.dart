import 'package:flutter/material.dart';
import 'package:orakom/features/my_buuys/presentation/manger/my_buys_cubit.dart';
import 'package:orakom/features/my_buuys/presentation/views/widgets/my_buys_list_view_item.dart';

class MyBuysListView extends StatelessWidget {
  const MyBuysListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: MyBuysCubit.get(context).list.length,
        itemBuilder: (context, index) {
          return  const MyBuysListViewItem();
        },
      ),
    );
  }
}
