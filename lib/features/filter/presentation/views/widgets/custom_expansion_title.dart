import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';
import 'package:orakom/features/filter/presentation/manger/filter_cubit.dart';
import 'package:orakom/features/filter/presentation/views/widgets/custom_check_box_item.dart';

class CustomExpansionTitle extends StatelessWidget {
  const CustomExpansionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w,vertical: 23.h),
      child: Column(
        children: [
          ExpansionTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.r),
            ),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.r),
            ),
            title: Text(
              'خبرة التدريس',
              style: Style.textStyle15.copyWith(
                color: AppColors.whiteColor,
              ),
            ),
            iconColor: AppColors.whiteColor,
            collapsedIconColor: AppColors.whiteColor,
            backgroundColor:AppColors.greenColor,
            collapsedBackgroundColor: AppColors.greenColor,
            children: [
               Container(
                 color: AppColors.whiteColor,
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 150.w,
                      height: 300.h,
                      child: ListView.builder(
                        itemCount: FilterCubit.get(context).list.length,
                        itemBuilder: (context, index) {
                          return CustomCheckBoxItem(
                            filterModel: FilterCubit.get(context).list[index],
                          );
                        },
                      ),
                    ),
                  ],
              ),
               ),
            ],
          ),
        ],
      ),
    );
  }
}
