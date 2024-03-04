import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/assets_manager.dart';
import 'package:orakom/core/constant/app_colors.dart';

class ImageProfile extends StatelessWidget {
  const ImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16.0.h,
        bottom: 8.h,
      ),
      child: Stack(
        children: [
           CircleAvatar(
            radius: 35.r,
            backgroundImage: const CachedNetworkImageProvider(
              'https://www.perfocal.com/blog/content/images/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg',
            ),
          ),
          PositionedDirectional(
            bottom: -1.h,
            // start: 42.w,
            child: Container(
              padding: EdgeInsets.all(5.h),
              decoration: const BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              child: Image.asset(AssetsManager.cam, width: 15.w, height: 15.h),
            ),
          ),
        ],
      ),
    );
  }
}
