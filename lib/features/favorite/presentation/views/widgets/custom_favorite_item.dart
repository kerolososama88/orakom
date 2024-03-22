import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/favorite/data/models/favorite_model.dart';
import 'package:orakom/features/favorite/presentation/manger/favorite_cubit.dart';
import 'package:orakom/features/favorite/presentation/manger/favorite_state.dart';
import 'package:orakom/features/product_details/presentation/views/product_details_view.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/assets_manager.dart';
import '../../../../../core/constant/text_style.dart';

class CustomFavoriteItem extends StatelessWidget {
  const CustomFavoriteItem({super.key, required this.favoriteModel});

  final FavoriteModel favoriteModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ProductDetailsView(),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 13.w, bottom: 7.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 15.r,
                  backgroundImage: const NetworkImage(
                    'https://www.perfocal.com/blog/content/images/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 6.0.w,
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    '${favoriteModel.name}',
                    style: Style.textStyle14,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 165.w,
            decoration: BoxDecoration(
              color: AppColors.borderColor,
              border: Border.all(
                color: AppColors.borderFavColor,
              ),
              borderRadius: BorderRadius.circular(7.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      CachedNetworkImage(
                        height: 117.h,
                        width: 165.w,
                        fit: BoxFit.fill,
                        imageBuilder: (context, imageProvider) {
                          return Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://www.perfocal.com/blog/content/images/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg',
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                        imageUrl:
                            'https://www.perfocal.com/blog/content/images/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg',
                      ),
                      Positioned(
                        right: 7.w,
                        top: 12.h,
                        child: Row(
                          children: [
                            BlocBuilder<FavoriteCubit, FavoriteState>(
                              buildWhen: (previous, current) =>
                                  current is ChangeFavoritesSuccess,
                              builder: (context, state) {
                                return InkWell(
                                  onTap: () => FavoriteCubit.get(context)
                                      .onChangeFavoriteItem(favoriteModel),
                                  child: Container(
                                    height: 21.h,
                                    width: 32.w,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 4.w, vertical: 3.h),
                                    decoration: BoxDecoration(
                                      color: AppColors.backGroundIcon,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: favoriteModel.isFavorite!
                                        ? Image.asset(
                                            height: 12.h,
                                            width: 13.w,
                                            AssetsManager.heart,
                                          )
                                        : Image.asset(AssetsManager.heartt),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              width: 80.w,
                            ),
                            Container(
                              height: 21.h,
                              width: 32.w,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 4.w, vertical: 3.h),
                              decoration: BoxDecoration(
                                color: AppColors.backGroundIcon,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AssetsManager.staar,
                                    height: 11.h,
                                    // width: 12.w,
                                  ),
                                  SizedBox(width: 4.w),
                                  Text(
                                    '5',
                                    style: Style.textStyle11.copyWith(
                                      color: AppColors.blueColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: Text(
                    textAlign: TextAlign.start,
                    'المرجع الكامل في التحكمالكهربائي الصناعي',
                    style: Style.textStyle11.copyWith(
                      color: AppColors.blackTitleText,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 7.w),
                  child: Text(
                    textAlign: TextAlign.start,
                    'تقارير -  PDF',
                    style: Style.textStyle11.copyWith(
                      color: AppColors.greyText,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 7.w),
                  child: Row(
                    children: [
                      Text(
                        '150 ر.س',
                        style: Style.textStyle13.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                      SizedBox(
                        width: 11.w,
                      ),
                      Text(
                        '150 ر.س',
                        style: Style.textStyle13.copyWith(
                          color: AppColors.grayFavColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 165.w,
                  height: 37.h,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(7.r),
                        bottomLeft: Radius.circular(7.r),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'أضف للسلة',
                        style: Style.textStyle12.copyWith(
                          color: AppColors.whiteColor,
                        ),
                      ),
                      SizedBox(
                        width: 3.5.w,
                      ),
                      Image.asset(
                        width: 13.w,
                        height: 10.h,
                        AssetsManager.shopping,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
