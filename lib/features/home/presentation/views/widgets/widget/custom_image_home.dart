import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/home/presentation/manger/home_cubit.dart';

import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/text_style.dart';
import '../../../../../../core/constant/assets_manager.dart';

class CustomImageHome extends StatelessWidget {
  const CustomImageHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          height: 104.h,
          width: 147.w,
          imageBuilder: (context, imageProvider) {
            return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
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
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return InkWell(
                    child: Container(
                      height: 19.h,
                      width: 20.w,
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
                      decoration: BoxDecoration(
                        color: AppColors.backGroundIcon,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Image.asset(
                        height: 10.h,
                        color: AppColors.greyColor,
                        AssetsManager.heartt,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                width: 72.w,
              ),
              Container(
                height: 19.h,
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: AppColors.backGroundIcon,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      AssetsManager.staar,
                      height: 10.h,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      '5',
                      style: Style.textStyle10.copyWith(
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
    );
  }
}
