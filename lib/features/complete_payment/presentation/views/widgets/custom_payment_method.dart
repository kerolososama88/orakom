import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/complete_payment/presentation/manger/complete_payment_cubit.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/text_style.dart';

class CustomPaymentMethod extends StatelessWidget {
  const CustomPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit=CompletePaymentCubit.get(context);
    return Padding(
      padding: EdgeInsets.only(right: 12.0.w,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start  ,
        children: [
          Text(
            'طريقة الدفع',
            style: Style.textStyle13.copyWith(
              color: AppColors.completePaymentBlack,
            ),
          ),
          BlocBuilder<CompletePaymentCubit, CompletePaymentState>(
            builder: (context, state) {
              return Row(
                children: [
                  Radio(
                    activeColor: AppColors.primary,
                    value: 1,
                    groupValue: cubit.value1,
                    onChanged: (value) {
                      cubit.changeRadio1(value!);
                    },
                  ),
                  Text(
                    'دفع اونلايين',
                    style: Style.textStyle13.copyWith(
                      color: AppColors.completePaymentGrey,
                    ),
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  Radio(
                    activeColor: AppColors.primary,
                    value: 0,
                    groupValue: cubit.value1,
                    onChanged: (value) {
                      cubit.changeRadio1(value!);
                    },
                  ),
                  Text(
                    'الدفع المحفظة',
                    style: Style.textStyle13.copyWith(
                      color: AppColors.completePaymentGrey,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
