import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';
import 'package:orakom/core/widgets/defaultButtom.dart';
import 'package:orakom/features/complete_payment/presentation/views/complete_payment_view.dart';

class CartAction extends StatelessWidget {
  const CartAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 20.0.h, bottom: 20.h, left: 25.w, right: 26.w),
      child: Column(
        children: [
          Text(
            'يمكنك تحميل المنتجات التي تم شراؤها على الفور من حساب ورقكم الخاص بك',
            style: Style.textStyle12.copyWith(
              color: AppColors.cartGreyText,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          defaultButtom(
            function: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CompletePaymentView(),
                ),
              );
            },
            color: AppColors.primary,
            text: 'إتمام الدفع',
          ),
        ],
      ),
    );
  }
}
