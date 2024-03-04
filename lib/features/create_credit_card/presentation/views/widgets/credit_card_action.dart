import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/widgets/defaultButtom.dart';
import 'package:orakom/features/add_credit_card/presentation/views/add_credit_card_view.dart';

class CreditCardAction extends StatelessWidget {
  const CreditCardAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 59.0.h),
      child: defaultButtom(
        function: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddCreditCardView(),
            ),
          );
        },
        color: AppColors.primary,
        text: '+   أضف بطاقة إئتمان جديدة',
      ),
    );
  }
}
