import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/assets_manager.dart';
import 'package:orakom/core/widgets/custom_appbar.dart';
import 'package:orakom/features/home/presentation/manger/home_cubit.dart';

import '../../../../not/presentation/views/not_view.dart';

class CustomHomeAppBar extends StatelessWidget {
  CustomHomeAppBar({super.key});

  final List<String> imageList = [
    'https://images.pexels.com/photos/268941/pexels-photo-268941.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.inc.com/uploaded_files/image/1920x1080/getty_509107562_2000133320009280346_351827.jpg',
    'https://nicolasgallagher.com/flexible-css-cover-images/cover.jpg',
    'https://t4.ftcdn.net/jpg/05/31/79/83/360_F_531798391_XFz7gyPmDRTAfiEE5sRjFu5NpKrJt4rC.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        const CustomAppbar(
          text: 'الرئيسية',
        ),
        PositionedDirectional(
          top: 80.h,
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return SizedBox(
                width: 342.w,
                height: 180.h,
                child: Column(
                  children: [
                    CarouselSlider(
                      items: imageList.map((imageUrl) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9.r),
                                  image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                      imageUrl,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
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
                          HomeCubit.get(context).onPageChanged(index);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.map(
                        (url) {
                          int index = imageList.indexOf(url);
                          return Container(
                            width: 10.0.w,
                            height: 10.0.h,
                            margin: EdgeInsets.symmetric(horizontal: 4.0.w),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HomeCubit.get(context).index == index
                                  ? AppColors.primary
                                  : Colors.grey,
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        PositionedDirectional(
          bottom: 39.h,
          end: 45.w,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const NotView(),
              ));
            },
            child: Image.asset(
              width: 18.w,
              height: 21.5.h,
              AssetsManager.noti,
            ),
          ),
        ),
      ],
    );
  }
}
