import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/product_details/presentation/views/widgets/product_details_tab.dart';

import 'custom_product_details_tab_par_view.dart';

class CustomProductDetailsTabParBody extends StatelessWidget {
  const CustomProductDetailsTabParBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18.h,horizontal: 16.w),
              child: const ProductDetailsTabPar(),
            ),
            const CustomProductDetailsTabParView(),
          ],
        ),
      ),
    );
  }
}
