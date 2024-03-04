import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';
import 'package:orakom/core/widgets/search_filter.dart';
import 'package:orakom/features/see_more_height_school/presentation/views/widgets/see_more_height_school_list_view.dart';
import 'package:orakom/features/see_more_height_school/presentation/views/widgets/see_more_height_school_title.dart';

class SeeMoreHeightSchoolBody extends StatelessWidget {
  const SeeMoreHeightSchoolBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomAppbarArrow(text: 'الرئيسية'),
        Padding(
          padding: EdgeInsets.only(top: 32.0.h, bottom: 25.h),
          child: const SearchFilter(),
        ),
        const SeeMoreHeightSchoolTitle(),
        const SeeMoreHeightSchoolListView(),
      ],
    );
  }
}
