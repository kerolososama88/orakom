import 'package:flutter/material.dart';
import 'package:orakom/features/profile/presentation/view/widgets/profile_tab_bar_view.dart';
import 'package:orakom/features/profile/presentation/view/widgets/profile_tapBar.dart';

class ProfileTapBarBody extends StatelessWidget {
  const ProfileTapBarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const DefaultTabController(
      length: 3,
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileTapBar(),
            ProfileTapBarView(),
          ],
        ),
      ),
    );
  }
}
