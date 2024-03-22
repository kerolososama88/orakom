import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/widgets/custom_text_field-auth.dart';
import 'package:orakom/core/widgets/custom_text_field_pass.dart';
import 'package:orakom/features/auth/presentation/regester/presentation/manger/register_cubit.dart';
import 'package:orakom/features/auth/presentation/regester/presentation/manger/register_state.dart';

import '../../../../../../../core/constant/app_colors.dart';
import '../../../../../../../core/constant/text_style.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.0.w),
      child: Column(
        children: [
          customTextFieldAuth(
            onTapOutside: (v) => FocusScope.of(context).unfocus(),
            hintText: 'أدخل الأسم',
            height: 48.h,
            controller: TextEditingController(),
            text: 'الأسم',
          ),
          SizedBox(
            height: 12.5.h,
          ),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Text(
              'رقم الجوال',
              style: Style.textStyle14.copyWith(
                color: AppColors.textBlack,
              ),
            ),
          ),
          SizedBox(
            height: 11.h,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'أدخل رقم الجوال',
              hintStyle: Style.textStyle12,
              contentPadding: const EdgeInsets.fromLTRB(0.0, 16.0, 15.0, 22.0),
              fillColor: AppColors.fill,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  16.r,
                ),
              ),
              suffixIcon: DropdownButtonHideUnderline(
                child: BlocBuilder<RegisterCubit, RegisterState>(
                  builder: (context, state) {
                    return Padding(
                      padding: EdgeInsets.only(left: 14.w),
                      child: DropdownButton(
                        value: state is RegisterItemState ? state.item :RegisterCubit.get(context).listItem.first,
                        items: RegisterCubit.get(context)
                            .listItem
                            .map(
                              (item) => DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                            ),
                          ),
                        )
                            .toList(),
                        onChanged: (newValue) {
                          RegisterCubit.get(context).changeValue(newValue!);
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12.5.h,
          ),
          customTextFieldAuth(
            onTapOutside: (v) => FocusScope.of(context).unfocus(),
            hintText: 'أدخل البريد الإلكتروني',
            height: 48.h,
            width: 342.w,
            controller: TextEditingController(),
            text: 'البريد الإلكتروني',
          ),
          SizedBox(
            height: 12.5.h,
          ),
          customTextFieldAuth(
            onTapOutside: (v) => FocusScope.of(context).unfocus(),
            hintText: 'أدخل المرحلة الدراسية',
            height: 48.h,
            width: 342.w,
            controller: TextEditingController(),
            text: 'المرحلة الدراسية',
          ),
          SizedBox(
            height: 12.5.h,
          ),
          BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) {
              return CustomTextFieldPass(
                obscureText:
                    RegisterCubit.get(context).isPassword ? true : false,
                controller:
                    RegisterCubit.get(context).registerPasswordController,
                suffixIcon: RegisterCubit.get(context).suffixWidget(),
                text: 'كلمة المرور',
              );
            },
          ),
          SizedBox(
            height: 12.5.h,
          ),
          BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) {
              return CustomTextFieldPass(
                obscureText:
                    RegisterCubit.get(context).isNewPassword ? true : false,
                controller:
                    RegisterCubit.get(context).registerNewPasswordController,
                suffixIcon: RegisterCubit.get(context).suffixNewWidget(),
                text: 'تأكيد كلمة المرور',
              );
            },
          ),
        ],
      ),
    );
  }
}
