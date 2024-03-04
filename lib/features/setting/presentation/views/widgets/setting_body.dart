import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';
import 'package:orakom/features/setting/presentation/views/widgets/setting_languge_action.dart';
import 'package:orakom/features/setting/presentation/views/widgets/setting_noti_action.dart';
import 'package:orakom/features/setting/presentation/views/widgets/setting_text.dart';
import 'package:orakom/features/setting/presentation/views/widgets/setting_title.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppbarArrow(text: 'الإعدادات',),
        const SettingText(),
        const SettingLanguageAction(),
        SizedBox(
          height: 20.h,
        ),
        const SettingTitle(
          text: 'إعدادات الإشعارات',
        ),
        const SettingNotAction(),

      ],
    );
  }
}
