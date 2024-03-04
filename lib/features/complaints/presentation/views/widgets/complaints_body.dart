import 'package:flutter/material.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';

import 'complaints_action.dart';
import 'complaints_form.dart';

class ComplaintsBody extends StatelessWidget {
  const ComplaintsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomAppbarArrow(text: 'الشكاوى والمقترحات',),
          ComplaintsForm(),
          ComplaintsAction(),
        ],
      ),
    );
  }
}
