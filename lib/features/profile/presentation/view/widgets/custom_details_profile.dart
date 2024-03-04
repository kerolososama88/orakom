import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_details_profile_follow.dart';
import 'custom_details_profile_rating.dart';

class CustomDetailsProfile extends StatelessWidget {
  const CustomDetailsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 29.h),
      child: const Column(
        children: [
          CustomDetailsProfileFollow(),
          CustomDetailsProfileRating(),
        ],
      ),
    );
  }
}
