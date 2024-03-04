import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/favorite/presentation/views/widgets/custom_favorite_item.dart';
import '../../manger/favorite_cubit.dart';

class CustomListViewFavorite extends StatelessWidget {
  const CustomListViewFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 22.h),
        itemCount: FavoriteCubit.get(context).listFavorite.length,
        physics: const BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 20.h,
          childAspectRatio: 156.w / 250.h,
        ),
        itemBuilder: (BuildContext context, int index) {
          return CustomFavoriteItem(
            favoriteModel: FavoriteCubit.get(context).listFavorite[index],
          );
        },
      ),
    );
  }
}
