import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/widgets/custom_text_field-auth.dart';

class EditeCreditCardForm extends StatelessWidget {
  const EditeCreditCardForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 33.0.h,right: 16.w,left: 16.w ),
      child: Column(
        children: [
          customTextFieldAuth(
            controller: TextEditingController(),
            hintText: '****-****-****-****',
            text: 'رقم البطاقة',
          ),
          SizedBox(
            height: 14.h,
          ),
          customTextFieldAuth(
            controller: TextEditingController(),
            hintText: 'MM/YY',
            text: 'تاريخ الإنتهاء',
          ),
          Padding(
            padding: EdgeInsets.only(top: 14.0.h,bottom: 50.h),
            child: customTextFieldAuth(
              controller: TextEditingController(),
              hintText: 'Ex: 123',
              text: 'CVV',
            ),
          ),
        ],
      ),
    );
  }
}
