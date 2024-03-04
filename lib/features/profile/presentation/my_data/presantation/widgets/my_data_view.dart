import 'package:flutter/material.dart';

import 'my_data_expansion_title_body.dart';

class MyDataView extends StatelessWidget {
  const MyDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          MyDataCustomExpansionTitleBody(),
        ],
      ),
    );
  }
}
