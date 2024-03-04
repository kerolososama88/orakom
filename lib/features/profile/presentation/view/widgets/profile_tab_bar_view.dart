import 'package:flutter/material.dart';
import 'package:orakom/features/profile/presentation/my_data/presantation/widgets/my_data_view.dart';
import 'package:orakom/features/profile/presentation/my_rating/presentation/widgets/my_rating_view.dart';

import '../../my_product/presntation/widgets/my_products_view.dart';

class ProfileTapBarView extends StatelessWidget {
  const ProfileTapBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: TabBarView(
        children: [
          MyProductsView(),
          MyRatingView(),
          MyDataView(),
        ],
      ),
    );
  }
}
