import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';
import 'package:orakom/core/widgets/logo_auth.dart';

import 'custom_number_of_products.dart';
import 'custom_tax_number.dart';
import 'custom_value_details.dart';

class ValueAddedBody extends StatelessWidget {
  const ValueAddedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbarArrow(
          text: 'فاتورة القيمة المضافة',
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                LogoAuth(bottom: 53.h,),
                const CustomTaxNumber(),
                const CustomValueDetails(),
                const CustomNumberOfProducts(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
