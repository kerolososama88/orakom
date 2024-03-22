import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/product_details/presentation/manger/product_details_state.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../manger/product_details_cubit.dart';

class CustomProductDetailsSliderPhoto extends StatelessWidget {
  CustomProductDetailsSliderPhoto({super.key});

  final List<String> imageListDetails = [
    'https://images.pexels.com/photos/268941/pexels-photo-268941.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.inc.com/uploaded_files/image/1920x1080/getty_509107562_2000133320009280346_351827.jpg',
    'https://nicolasgallagher.com/flexible-css-cover-images/cover.jpg',
    'https://t4.ftcdn.net/jpg/05/31/79/83/360_F_531798391_XFz7gyPmDRTAfiEE5sRjFu5NpKrJt4rC.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        return Stack(
          children: [
            CarouselSlider(
              items: imageListDetails.map((imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.r),
                        image: DecorationImage(
                          image: NetworkImage(
                            imageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: 136.h,
                viewportFraction: 1.0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(seconds: 2),
                autoPlayCurve: Curves.bounceIn,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  ProductDetailsCubit.get(context).onPageChanged(index);
                },
              ),
            ),
            PositionedDirectional(
              bottom: 10.h,
              start: 130.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageListDetails.map(
                      (url) {
                    int index = imageListDetails.indexOf(url);
                    return Container(
                      width: 10.0.w,
                      height: 10.0.h,
                      margin: EdgeInsets.symmetric(horizontal: 4.0.w),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ProductDetailsCubit
                            .get(context)
                            .index == index
                            ? AppColors.primary
                            : AppColors.whiteColor,
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        );
      },
    );
  }
}
