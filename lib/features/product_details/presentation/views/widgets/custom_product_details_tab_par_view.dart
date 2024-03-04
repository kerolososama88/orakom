import 'package:flutter/material.dart';

import 'custom_details_view.dart';
import 'custom_rating_list_view.dart';

class CustomProductDetailsTabParView extends StatelessWidget {
  const CustomProductDetailsTabParView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          CustomDetailsView(),
          CustomRatingView(),
        ],
      ),
    );
  }
}
