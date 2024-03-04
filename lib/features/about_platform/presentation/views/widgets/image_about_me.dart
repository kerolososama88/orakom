import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/assets_manager.dart';
import 'package:orakom/core/constant/text_style.dart';

class ImageAboutMe extends StatelessWidget {
  const ImageAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 32.0.h, bottom: 8.h),
          child: Text(
            'عن المنصة',
            style: Style.textStyle16.copyWith(
              color: AppColors.completePaymentGrey,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 69.0.w,right: 69.0.w,bottom: 25.h),
          child: Text(
            maxLines: 2,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد هذا النص هو مثال لنص يمكن أن',
          style: Style.textStyle12.copyWith(
            color: AppColors.completePaymentGrey,
          ),
          ),
        ),
        Image.asset(
          width: 180.76.w,
          height: 124.27.h,
          AssetsManager.aboutus,
        ),
      ],
    );
  }
}
