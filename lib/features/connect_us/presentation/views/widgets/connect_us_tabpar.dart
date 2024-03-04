import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/connect_us/presentation/views/widgets/custom_connect_us_body.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/widgets/custom_appbar_arrow.dart';
import 'custom_common_questions_body.dart';

class ConnectUsTabPar extends StatelessWidget {
  const ConnectUsTabPar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppbarArrow(text: 'تواصل معنا',),
            Padding(
              padding:EdgeInsets.only(top: 32.0.h,right: 17.w,left: 17.w),
              child: SizedBox(
                height: 42.h,
                child: TabBar(
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 10.w),
                  unselectedLabelColor: AppColors.creditCardBlack,
                  indicator: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  tabs:  const [
                    Tab(
                      text: 'الأسئلة الشائعة',
                    ),
                    Tab(
                      text: 'تواصل معنا',
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  CustomCommonQuestionsBody(),
                  CustomConnectUsBody(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
