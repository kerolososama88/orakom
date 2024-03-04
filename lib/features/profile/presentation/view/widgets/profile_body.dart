import 'package:flutter/material.dart';
import 'package:orakom/features/profile/presentation/view/widgets/profile_tap_bar_body.dart';

import 'custom_app_bar_profile.dart';
import 'custom_brief_title.dart';
import 'custom_details_profile.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBarProfile(),
        CustomDetailsProfile(),
        CustomBriefTitle(),
        ProfileTapBarBody(),
      ],
    );
  }
}
