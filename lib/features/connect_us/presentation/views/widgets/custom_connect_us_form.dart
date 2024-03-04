import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/widgets/custom_text_field-auth.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/text_style.dart';

class CustomConnectUsForm extends StatelessWidget {
  const CustomConnectUsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 32.h, bottom: 20.h, left: 16.w, right: 17.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customTextFieldAuth(
            text: 'الإسم',
            hintText: 'أدخل الإسم',
            controller: TextEditingController(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 14.h),
            child: customTextFieldAuth(
              text: 'رقم الجوال',
              hintText: 'أدخل رقم الجوال',
              controller: TextEditingController(),
            ),
          ),
          Text(
            'محتوى الشكوى',
            style: Style.textStyle14.copyWith(
              color: AppColors.textBlack,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          TextFormField(
            onTapOutside: (v) => FocusScope.of(context).unfocus(),
            controller: TextEditingController(),
            decoration: InputDecoration(
              contentPadding:
              EdgeInsets.fromLTRB(14.0.w, 11.0.h, 14.0.h, 11.0.h),
              fillColor: AppColors.fill,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  16.r,
                ),
              ),
              hintText:
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان',
              hintStyle: Style.textStyle12,
              hintMaxLines: 5,
              // hintTextDirection:Te ,
            ),
          ),
        ],
      ),
    );
  }
}
