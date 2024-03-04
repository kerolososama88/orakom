import 'package:flutter/material.dart';
import 'package:orakom/features/profile/presentation/my_rating/presentation/widgets/custom_comment_item.dart';

class CustomCommentListView extends StatelessWidget {
  const CustomCommentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        // physics: NeverScrollableScrollPhysics(),
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
