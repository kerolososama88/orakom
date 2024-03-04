import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/auth/presentation/restore_password/presentation/manger/restore_password_cubit/restore_password_cubit.dart';
import 'package:orakom/features/auth/presentation/restore_password/presentation/manger/restore_password_cubit/restore_password_state.dart';

import '../../../../../../../core/constant/app_colors.dart';
import '../../../../../../../core/constant/text_style.dart';

class RestorePasswordForm extends StatelessWidget {
  const RestorePasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = RestorePasswordCubit.get(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31.w),
      child: TextFormField(
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
            child: BlocBuilder<RestorePasswordCubit, RestorePasswordState>(
              builder: (context, state) {
                return Padding(
                  padding: EdgeInsets.only(left: 14.w),
                  child: DropdownButton(
                    value: state is RestorePasswordItemState
                        ? state.item
                        :cubit.listItem.first,
                    items: cubit
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
                     cubit.changeValue(newValue!);
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
