import 'package:flutter/cupertino.dart';
import 'package:orakom/core/constant/app_colors.dart';

import '../constant/text_style.dart';

Widget showText({
  required String text,
})=>Text(
  text,
  style: Style.textStyle18.copyWith(
    color: AppColors.primary,
  ),
);