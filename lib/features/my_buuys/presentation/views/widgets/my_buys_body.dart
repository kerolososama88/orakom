import 'package:flutter/material.dart';

import 'package:orakom/core/widgets/custom_appbar.dart';
import 'package:orakom/features/my_buuys/presentation/views/widgets/custom_bottom_sheet.dart';
import 'package:orakom/features/my_buuys/presentation/views/widgets/my_buys_list_view.dart';

import 'my_buys_list_view_item.dart';




class MyBuysBody extends StatelessWidget {
  const MyBuysBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(
          text: 'المشتريات',
        ),
        // SizedBox(
        //   height: 20,
        // ),
        MyBuysListView(),
        // MyBuysListViewItem(),
      ],
    );
  }
}
