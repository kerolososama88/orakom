import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/text_style.dart';

class CustomDetailsForm extends StatelessWidget {
  const CustomDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 17.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 8.h,
            ),
            child: Text(
              'الوصف',
              style: Style.textStyle14.copyWith(
                color: AppColors.textBlack,
              ),
            ),
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
