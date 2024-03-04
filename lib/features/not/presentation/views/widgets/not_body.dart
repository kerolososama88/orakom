import 'package:flutter/material.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';

import 'not_list_view.dart';

class NotBody extends StatelessWidget {
  const NotBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbarArrow(text: 'الاشعارات',),
        NotListView(),
      ],
    );
  }
}
