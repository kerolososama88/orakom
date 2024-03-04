import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constant/text_style.dart';

class CustomDescriptionHome extends StatelessWidget {
  const CustomDescriptionHome({super.key, required this.descriptionText});

  final String descriptionText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 9.0.w,
        top: 6.h,
        bottom: 8.h,
      ),
      child: Align(
        alignment: AlignmentDirectional.topStart,
        child: Text(
          descriptionText,
          style: Style.textStyle10,
        ),
      ),
    );
  }
}
