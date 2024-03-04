import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/home/presentation/views/widgets/custom_home_appbar.dart';
import 'package:orakom/core/widgets/search_filter.dart';
import 'package:orakom/features/home/presentation/views/widgets/junior_school_list_view.dart';
import 'package:orakom/features/home/presentation/views/widgets/widget/see_more_text.dart';
import 'package:orakom/features/home/presentation/views/widgets/widget/custom_text_title_list.dart';
import 'package:orakom/features/see_more_height_school/presentation/views/see_more_height_school_view.dart';

import 'height_school_list_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHomeAppBar(),
        SizedBox(height: 133.h),
        const SearchFilter(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomTextTitleList(
                  text: 'استكشف موارد المدرسة الثانويه',
                  alignmentDirectional: AlignmentDirectional.topStart,
                ),
                const HeightSchoolListView(),
                SeeMoreText(onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SeeMoreHeightSchoolView(),
                    ),
                  );
                }),
                const CustomTextTitleList(
                  text: 'استكشف موارد المدرسة الاعداديه',
                  alignmentDirectional: AlignmentDirectional.topStart,
                ),
                const JuniorSchoolListView(),
                SeeMoreText(
                  onTap: () {},
                ),
                const CustomTextTitleList(
                  text: 'استكشف موارد المدرسة الابتدائيه',
                  alignmentDirectional: AlignmentDirectional.topStart,
                ),
                const HeightSchoolListView(),
                Padding(
                  padding: EdgeInsets.only(bottom: 14.0.h),
                  child: SeeMoreText(
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
