import 'package:flutter/material.dart';
import 'package:orakom/features/not/presentation/views/widgets/not_item.dart';

class NotListView extends StatelessWidget {
  const NotListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context, index) {
        return const NotItem();
      },
      itemCount: 10,
      ),
    );
  }
}
