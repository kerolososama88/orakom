import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/widgets/custom_text_field-auth.dart';
import 'package:orakom/core/widgets/custom_text_field_pass.dart';

import '../../manger/add_credit_card_cubit.dart';

class AddCreditCardForm extends StatelessWidget {
  const AddCreditCardForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.0.w, vertical: 32.h),
      child: Column(
        children: [
          customTextFieldAuth(
            controller: TextEditingController(),
            hintText: 'أدخل رقم الجوال',
            text: 'رقم الجوال',
          ),
          SizedBox(
            height: 14.h,
          ),
          customTextFieldAuth(
            controller: TextEditingController(),
            hintText: 'أدخل البريد الإلكتروني',
            text: 'البريد الإلكتروني',
          ),
          SizedBox(
            height: 14.h,
          ),
          BlocBuilder<AddCreditCardCubit, AddCreditCardState>(
            builder: (context, state) {
              return CustomTextFieldPass(
                obscureText:
                    AddCreditCardCubit.get(context).isPassword ? true : false,
                controller: AddCreditCardCubit.get(context).passwordController,
                suffixIcon: AddCreditCardCubit.get(context).suffixWidget(),
                text: 'كلمة المرور',
              );
            },
          ),
        ],
      ),
    );
  }
}
