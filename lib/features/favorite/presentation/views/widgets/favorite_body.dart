import 'package:flutter/material.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';

import 'custom_list_view_favorite.dart';

class FavoriteBody extends StatelessWidget {
  const FavoriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbarArrow(
          text: 'قائمة المفضلة',
        ),
        CustomListViewFavorite(),
      ],
    );
  }
}
