import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/setting/presentation/manger/setting_cubit.dart';
import 'package:orakom/features/setting/presentation/views/widgets/custom_switch.dart';

class SettingNotAction extends StatelessWidget {
  const SettingNotAction({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = SettingCubit.get(context);
    return BlocBuilder<SettingCubit, SettingState>(
      builder: (context, state) {
        return Padding(
          padding:EdgeInsets.symmetric(horizontal: 17.0.w,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSwitch(
                text: 'تلقي الإشعارات',
                value: cubit.isSwitch1,
                onChanged: (value) {
                  cubit.changeSwitchSetting1(value);
                },
              ),
              CustomSwitch(
                text: 'إشعارات العروض',
                value: cubit.isSwitch2,
                onChanged: (value) {
                  cubit.changeSwitchSetting2(value);
                },
              ),
              CustomSwitch(
                text: 'اشعارات المتاجر المتابعة',
                value: cubit.isSwitch3,
                onChanged: (value) {
                  cubit.changeSwitchSetting3(value);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
