import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/assets_manager.dart';
import 'package:orakom/core/constant/text_style.dart';
import 'package:orakom/core/widgets/border_bottom.dart';
import 'package:orakom/core/widgets/defaultButtom.dart';
import 'package:orakom/features/layout/presentation/view/layout.dart';

class DialogBody extends StatelessWidget {
  const DialogBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(11.0.r)),
      content: SizedBox(
        height: 425.0.h,
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              children: [
                Lottie.asset(
                  width: 186.w,
                  height: 186.h,
                  'assets/animation/Animation.json',
                ),
                Text(
                  'تم اكمال طلب بنجاح',
                  style: Style.textStyle16.copyWith(
                    color: AppColors.completePaymentGrey,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 18.h),
                  child: BorderBottom(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const Layout(tabIndex: 0),
                        ),
                        (route) => false,
                      );
                    },
                    text: 'الرئيسية',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: defaultButtom(
                    function: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const Layout(tabIndex: 2),
                        ),
                        (route) => false,
                      );
                    },
                    color: AppColors.primary,
                    text: 'مشترياتي',
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Image.asset(
                width: 26.11.w,
                height: 25.11.h,
                AssetsManager.close,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
