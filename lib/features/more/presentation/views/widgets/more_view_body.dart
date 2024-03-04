import 'package:flutter/material.dart';
import 'package:orakom/core/widgets/custom_appbar.dart';

import 'custom_image_profile_more.dart';
import 'custom_list_page_more.dart';

class MoreViewBody extends StatelessWidget {
  const MoreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(text: 'المزيد',),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomImageProfileMore(),
                CustomListPageMore(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
