import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';
import 'package:orakom/features/setting/presentation/manger/setting_cubit.dart';
import 'package:orakom/features/setting/presentation/views/widgets/setting_title.dart';

class SettingLanguageAction extends StatelessWidget {
  const SettingLanguageAction({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit=SettingCubit.get(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SettingTitle(text: 'إعدادات اللغة',),
        BlocBuilder<SettingCubit, SettingState>(
          builder: (context, state) {
            return Row(
              children: [
                Radio(
                  activeColor: AppColors.primary,
                  value: 0,
                  groupValue: cubit.value1,
                  onChanged: (value) {
                    cubit.changeRadioSetting(value!);
                  },
                ),
                Text(
                  'اللغة العربية',
                  style: Style.textStyle13.copyWith(
                    color: AppColors.completePaymentGrey,
                  ),
                ),
                SizedBox(
                  width: 40.w,
                ),
                Radio(
                  activeColor: AppColors.primary,
                  value: 2,
                  groupValue: cubit.value1,
                  onChanged: (value) {
                    cubit.changeRadioSetting(value!);
                  },
                ),
                Text(
                  'English',
                  style: Style.textStyle13.copyWith(
                    color: AppColors.completePaymentGrey,
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
