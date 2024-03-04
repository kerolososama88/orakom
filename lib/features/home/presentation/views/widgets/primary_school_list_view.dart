import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/home/presentation/views/widgets/widget/custom_home_list_view_item.dart';

class PrimarySchoolListView extends StatelessWidget {
  const PrimarySchoolListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 226.h,
      child: Padding(
        padding:EdgeInsets.only(right:17.w ),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          shrinkWrap: false,
          itemBuilder: (context, index) {
            return  const CustomHomeListViewItem();
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 8.w,
            );
          },
        ),
      ),
    );
  }
}
