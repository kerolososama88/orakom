import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';

class CompletePaymentCode extends StatelessWidget {
  const CompletePaymentCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 33.h, bottom: 25.h, right: 13.w, left: 17.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'كود الخصم',
            style: Style.textStyle14.copyWith(
              color: AppColors.completePaymentBlack,
            ),
          ),
          SizedBox(
            height: 11.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 262.w,
                height: 43.69.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: .75.sp,
                        color: const Color.fromRGBO(119, 119, 119, 0.08),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: .75.sp,
                        color: const Color.fromRGBO(119, 119, 119, 0.08),
                      ),
                    ),
                    contentPadding:
                        const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                      ),
                    ),
                    hintText: 'قم بإدخال كود الخصم ان وجد',
                    hintStyle: Style.textStyle13,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 66.w,
                    height: 41.h,
                  padding: EdgeInsets.all(11.h),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.r),
                      bottomLeft: Radius.circular(5.r),
                    ),
                  ),
                  child:Text(
                    'تفعيل',
                    style: Style.textStyle14.copyWith(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
