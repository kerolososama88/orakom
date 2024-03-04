import 'package:flutter/material.dart';
import 'custom_comment_list_view.dart';
import 'custom_rating.dart';

class MyRatingView extends StatelessWidget {
  const MyRatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomRating(),
        CustomCommentListView(),
      ],
    );
  }
}
