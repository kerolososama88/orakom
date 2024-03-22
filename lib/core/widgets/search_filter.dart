import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/assets_manager.dart';
import 'package:orakom/core/constant/app_colors.dart';

import '../constant/text_style.dart';
import '../../features/filter/presentation/views/filter_view.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.0.w, right: 17.0.w, ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FilterView(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(9.h),
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(5.r)),
              child: Image.asset(
                AssetsManager.filter,
                width: 20.w,
                height: 20.h,
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            width: 230.w,
            height: 38.69.h,
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
                hintText: 'ابحث عن المنتجات والفئات',
                hintStyle: Style.textStyle13,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(11.h),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7.r),
                  bottomLeft: Radius.circular(7.r),
                ),
              ),
              child: Image.asset(AssetsManager.search,
                  width: 17.21.w, height: 17.21.h),
            ),
          ),
        ],
      ),
    );
  }
}
