import 'package:flutter/material.dart';

import 'custom_cache_view.dart';
import 'custom_points_view.dart';

class PortfolioTabBarView extends StatelessWidget {
  const PortfolioTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: TabBarView(
        children: [
          CustomCacheView(),
          CustomPointsView(),
        ],
      ),
    );
  }
}
