import 'package:flutter/material.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';

import 'follow_Service_list_view.dart';

class FollowServiceBody extends StatelessWidget {
  const FollowServiceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbarArrow(text: 'مقدمي الخدمة المتابعيين'),
        FollowServiceListView(),
      ],
    );
  }
}
