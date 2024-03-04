import 'package:flutter/material.dart';

import '../../../../profile/presentation/my_rating/presentation/widgets/custom_comment_item.dart';

class CustomRatingView extends StatelessWidget {
  const CustomRatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 8,
        itemBuilder: (context, index) {
          return const CustomCommentItem();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}
