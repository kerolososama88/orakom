import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';
import 'package:orakom/core/widgets/custom_text_bottm.dart';
import 'package:orakom/features/auth/presentation/restore_password/presentation/views/restore_password_view.dart';
import 'package:orakom/features/layout/presentation/view/layout.dart';
import '../../../../../../../core/widgets/defaultButtom.dart';
import '../../../../regester/presentation/views/register_view.dart';

class ActionAuth extends StatelessWidget {
  const ActionAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31.w),
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: customTextBottom(
              function: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RestorePasswordView(),
                  ),
                );
              },
              text: 'هل نسيت كلمة المرور؟',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 31.h),
            child: defaultButtom(
              function: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Layout(tabIndex: 0),
                  ),
                );
              },
              color: Colors.red,
              text: 'تسجيل الدخول',
            ),
          ),
          customTextBottom(
            function: () {},
            text: 'الدخول كزائر',
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const RegisterView(),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'لا يوجد لديك حساب ؟',
                  style: Style.textStyle14.copyWith(
                    color: AppColors.primary,
                  ),
                ),
                Text(
                  ' قم بإنشاء حساب',
                  style: Style.textStyleUnderLine14.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
