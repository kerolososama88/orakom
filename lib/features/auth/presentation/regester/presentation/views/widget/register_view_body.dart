import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';
import 'package:orakom/features/auth/presentation/regester/presentation/views/widget/register_form.dart';
import 'package:orakom/core/widgets/image_profile.dart';
import 'package:orakom/features/auth/presentation/regester/presentation/views/widget/register_name.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbarArrow(
          text: 'إنشاء حساب',),
       Expanded(
         child: SingleChildScrollView(
           child: Column(
             children: [
               const ImageProfile(),
               const RegisterName(),
               const RegisterForm(),
               SizedBox(
                 height: 16.h,
               ),
             ],
           ),
         ),
       ),
      ],
    );
  }
}
