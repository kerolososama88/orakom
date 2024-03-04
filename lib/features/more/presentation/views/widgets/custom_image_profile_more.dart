import 'package:flutter/material.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';

import '../../../../../core/widgets/image_profile.dart';

class CustomImageProfileMore extends StatelessWidget {
  const CustomImageProfileMore({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const ImageProfile(),
        Text('منى المنشاوي',
        style: Style.textStyle13.copyWith(
          color: AppColors.completePaymentBlack,
        ),
        ),
      ],
    );
  }
}
