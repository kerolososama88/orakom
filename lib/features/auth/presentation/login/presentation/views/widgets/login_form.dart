import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/auth/presentation/login/presentation/manger/login_cubit.dart';

import '../../../../../../../core/constant/app_colors.dart';
import '../../../../../../../core/constant/text_style.dart';
import '../../../../../../../core/widgets/custom_text_field_pass.dart';
import '../../manger/login_state.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31.0.h),
      child: Column(
        children: [
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
                child: BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, state) {
                    return Padding(
                      padding: EdgeInsets.only(left: 14.w),
                      child: DropdownButton(
                        value: state is ItemState
                            ? state.item
                            : LoginCubit.get(context).listItem.first,
                        items: LoginCubit.get(context)
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
                          LoginCubit.get(context).changeValue(newValue!);
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: 19.66.h,
          ),
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return CustomTextFieldPass(
                obscureText:
                LoginCubit.get(context).isPassword ? true : false,
                controller:
                LoginCubit.get(context).passwordController,
                suffixIcon: LoginCubit.get(context).suffixWidget(),
                text: 'كلمة المرور',
              );
            },
          ),
        ],
      ),
    );
  }
}
