import 'package:flutter/material.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';

import 'custom_expansion_title.dart';
import 'custom_filter_action.dart';

class FilterBody extends StatelessWidget {
  const FilterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      child:  Column(
        children: [
          CustomAppbarArrow(text: 'التصفية',),
          CustomExpansionTitle(),
          CustomFilterAction(),
        ],
      ),
    );
  }
}
