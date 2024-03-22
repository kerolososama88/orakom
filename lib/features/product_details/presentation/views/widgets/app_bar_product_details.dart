import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';

import '../../../../../core/constant/assets_manager.dart';

class AppBarProductDetails extends StatelessWidget {
  const AppBarProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomAppbarArrow(text: 'تفاصيل المنتج'),
        PositionedDirectional(
          bottom: 30.h,
          end: 27.w,
          child: InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Image.asset(
              height: 20.h,
              width: 20.w,
              AssetsManager.share,
            ),
          ),
        ),
      ],
    );
  }
}
