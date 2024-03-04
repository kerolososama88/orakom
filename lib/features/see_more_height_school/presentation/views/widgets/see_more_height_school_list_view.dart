import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/see_more_height_school/presentation/views/widgets/see_more_height_school_item.dart';



class SeeMoreHeightSchoolListView extends StatelessWidget {
  const SeeMoreHeightSchoolListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 22.h),
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 20.h,
          childAspectRatio:166.w/230.h,
        ),
        itemBuilder: (BuildContext context, int index) {
          return const SeeMoreHeightSchoolItem();
        },
      ),
    );
  }
}
