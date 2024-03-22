import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/widgets/custom_rich_text.dart';
import 'package:orakom/core/constant/text_style.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../../../../../../core/constant/app_colors.dart';

class CodeCounter extends StatelessWidget {
  const CodeCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.0.w,
        right: 25.0.w,
        top: 25.h,
        bottom: 45.h,
      ),
      child: Row(
        children: [
          const CustomRichText(
            text: 'أعد الارسال',
            text1: 'لم تستلم الكود؟',
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                'الوقت المتبقى:',
                style: Style.textStyle12,
              ),
              Countdown(
                seconds: 60,
                build: (BuildContext context, double time) =>
                    Text(
                      time.toString(),
                      style: Style.textStyle13.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                interval: const Duration(seconds: 1),
                onFinished: () {
                  final snackBar = SnackBar(
                    elevation: 0,
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.transparent,
                    content: AwesomeSnackbarContent(
                      title: 'تحذير!',
                      message:
                      'برجاء اعادة المحتوله',
                      contentType: ContentType.warning,
                    ),
                  );
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(snackBar);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
