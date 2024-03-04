import 'package:flutter/material.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';

Widget customTextBottom({
  required Function() function,
   String? text,
}) =>
    TextButton(
      onPressed: function,
      child: Text(
        text??'',
        style: Style.textStyleUnderLine14.copyWith(
          color: AppColors.primary,
        ),
      ),
    );
