import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';

import '../../manger/follow_service_cubit.dart';
import 'follow_Service_item.dart';

class FollowServiceListView extends StatelessWidget {
  const FollowServiceListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
          top: 34.h,
          bottom: 20.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: AppColors.greyText),
        ),
        child: Column(
          children: [
            Container(
              height: 35.h,
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              decoration: const BoxDecoration(
                color: AppColors.greyColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'إسم مقدم الخدمة',
                      maxLines: 1,
                      style: Style.textStyle13.copyWith(
                        color: AppColors.completePaymentBlack,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'الإشعارات',
                      style: Style.textStyle13.copyWith(
                        color: AppColors.completePaymentBlack,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'حذف',
                      style: Style.textStyle13.copyWith(
                        color: AppColors.completePaymentBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemBuilder: (context, index) {
                  return FollowServiceItem(
                    model: FollowServiceCubit.get(context).list[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22.w),
                    child: const Divider(),
                  );
                },
                itemCount: FollowServiceCubit.get(context).list.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
