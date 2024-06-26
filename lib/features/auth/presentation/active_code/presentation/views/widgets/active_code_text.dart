import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/text_style.dart';

class ActiveCodeText extends StatelessWidget {
  const ActiveCodeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 55.w, right: 55.w,bottom: 36.h),
      child: Text(
        'هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحه، لقد تم توليد هذا النص من',
        style: Style.textStyle13,
        textAlign: TextAlign.center,
      ),
    );
  }
}
