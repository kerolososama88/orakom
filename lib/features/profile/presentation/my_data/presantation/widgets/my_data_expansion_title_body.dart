import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'my_data_expansion_title_certification_and_expertise.dart';
import 'my_data_expansion_title_school_grade.dart';
import 'my_data_expansion_title_studying_subjects.dart';
import 'my_data_expansion_title_teaching_approach.dart';
import 'my_data_expansion_title_teaching_experience.dart';

class MyDataCustomExpansionTitleBody extends StatelessWidget {
  const MyDataCustomExpansionTitleBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 23.h),
      child: const Column(
        children: [
          MyDataExpansionTitleTeachingExperience(),
          MyDataExpansionTitleTeachingApproach(),
          MyDataExpansionTitleCertificationAndExpertise(),
          MyDataExpansionTitleSchoolGrade(),
          MyDataExpansionTitleStudyingSubjects(),
        ],
      ),
    );
  }
}
