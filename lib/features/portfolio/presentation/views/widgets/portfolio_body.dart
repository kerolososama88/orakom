import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';
import 'package:orakom/features/portfolio/presentation/views/widgets/my_tabpar.dart';
import 'package:orakom/features/portfolio/presentation/views/widgets/portfolio_tab_bar.dart';
import 'package:orakom/features/portfolio/presentation/views/widgets/portfolio_tab_bar_view.dart';

class PortfolioBody extends StatelessWidget {
  const PortfolioBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbarArrow(text: 'المحفظة'),
        DefaultTabController(
          length: 2,
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30.h),
                  child: const PortfolioTabBar(),
                ),
                const PortfolioTabBarView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
