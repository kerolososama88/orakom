import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/assets_manager.dart';
import 'package:orakom/core/constant/text_style.dart';
import 'package:orakom/features/value_added/presentation/views/value_added_view.dart';

class CustomReceiptItem extends StatelessWidget {
  const CustomReceiptItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 10.h),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 39.h,
            decoration: BoxDecoration(
              color: AppColors.receiptContainerColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(7.r),
                topLeft: Radius.circular(7.r),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0.w, right: 12.w),
                  child: Image.asset(
                    color: AppColors.primary,
                    width: 16.w,
                    height: 16.h,
                    AssetsManager.purchese,
                  ),
                ),
                Text(
                  'رقم الفاتورة',
                  style: Style.textStyle13.copyWith(
                    color: AppColors.blackTitleText,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: 12.0.w),
                  child: Text(
                    '#12345',
                    style: Style.textStyle14
                        .copyWith(color: AppColors.blackTitleText),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'تاريخ الطلب',
                  style: Style.textStyle13.copyWith(
                    color: AppColors.cartGreyText,
                  ),
                ),
                Text(
                  '10/3/2022',
                  style: Style.textStyle14
                      .copyWith(color: AppColors.blackTitleText),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'تكلفة الطلب',
                  style: Style.textStyle13.copyWith(
                    color: AppColors.cartGreyText,
                  ),
                ),
                Text(
                  '1500.00 ر.س',
                  style: Style.textStyle14.copyWith(color: AppColors.primary),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.0.h),
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ValueAddedView(),),);
              },
              child: Container(
                width: double.infinity,
                height: 39.h,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(7.r),
                      bottomLeft: Radius.circular(7.r),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'عرض الفاتورة',
                      style: Style.textStyle14.copyWith(
                        color: AppColors.whiteColor,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      padding: EdgeInsets.all(3.w),
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor.withOpacity(.21),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        color: AppColors.whiteColor,
                        size: 10.w,
                        Icons.arrow_back_ios_new_outlined,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
