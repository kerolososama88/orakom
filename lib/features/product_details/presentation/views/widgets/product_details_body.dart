import 'package:flutter/material.dart';
import 'package:orakom/features/product_details/presentation/views/widgets/app_bar_product_details.dart';

import 'custom_product_details_profile.dart';
import 'custom_product_details_slider.dart';
import 'custom_product_details_tab_par_body.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppBarProductDetails(),
        CustomProductDetailsProfile(),
        CustomProductDetailsSlider(),
        CustomProductDetailsTabParBody(),
      ],
    );
  }
}
