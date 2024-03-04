import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/widgets/custom_text_field-auth.dart';

class MyAccountForm extends StatelessWidget {
  const MyAccountForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18.0.w,),
      child: Column(
        children: [
          customTextFieldAuth(
            text: 'الأسم',
            hintText:'أدخل الأسم' ,
            controller: TextEditingController(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0.h,bottom: 15.h),
            child: customTextFieldAuth(
              onTapOutside: (v) => FocusScope.of(context).unfocus(),
              text: 'رقم الجوال',
              hintText:'أدخل رقم الجوال' ,
              controller: TextEditingController(),
            ),
          ),
          customTextFieldAuth(
            onTapOutside: (v) => FocusScope.of(context).unfocus(),
            text: 'البريد الإلكتروني',
            hintText:'أدخل المرحلة الدراسية' ,
            controller: TextEditingController(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0.h,),
            child: customTextFieldAuth(
              onTapOutside: (v) => FocusScope.of(context).unfocus(),
              text: 'رقم الجوال',
              hintText:'أدخل رقم الجوال' ,
              controller: TextEditingController(),
            ),
          ),
        ],
      ),
    );
  }
}
