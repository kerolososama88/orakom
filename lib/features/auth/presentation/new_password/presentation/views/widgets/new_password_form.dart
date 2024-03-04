import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/widgets/custom_text_field_pass.dart';
import 'package:orakom/features/auth/presentation/new_password/presentation/manger/new_password_cubit/new_password_cubit.dart';
import 'package:orakom/features/auth/presentation/new_password/presentation/manger/new_password_cubit/new_password_state.dart';

class NewPasswordForm extends StatelessWidget {
  const NewPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.0.w),
      child: Column(
        children: [
          BlocBuilder<NewPasswordCubit, NewPasswordState>(
            builder: (context, state) {
              return CustomTextFieldPass(
                hintText: 'الرجاء ادخال الكود المرسل اليك',
                obscureText: NewPasswordCubit.get(context).isCode ? true : false,
                controller:NewPasswordCubit.get(context).codeRestorePasswordController,
                suffixIcon: NewPasswordCubit.get(context).suffixWidgetChangeCode(),
                  text:'الكود',
              );
            },
          ),
          SizedBox(
            height: 13.6.h,
          ),
          BlocBuilder<NewPasswordCubit, NewPasswordState>(
            builder: (context, state) {
              return CustomTextFieldPass(
                obscureText: NewPasswordCubit.get(context).isNewPassword ? true : false,
                controller:NewPasswordCubit.get(context).newRestorePasswordController,
                suffixIcon: NewPasswordCubit.get(context).suffixWidgetNewPassword(),
                text:'كلمة المرور الجديدة',
              );
            },
          ),
          SizedBox(
            height: 13.6.h,
          ),
          BlocBuilder<NewPasswordCubit, NewPasswordState>(
            builder: (context, state) {
              return CustomTextFieldPass(
                obscureText: NewPasswordCubit.get(context).isConfirmPassword ? true : false,
                controller:NewPasswordCubit.get(context).confirmRestorePasswordController,
                suffixIcon: NewPasswordCubit.get(context).suffixWidgetConfirmPassword(),
                text:'تأكيد كلمة المرور الجديدة',
              );
            },
          ),
        ],
      ),
    );
  }
}
