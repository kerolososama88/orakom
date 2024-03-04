import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/widgets/custom_appbar_arrow.dart';

class CustomAppBarProfile extends StatelessWidget {
  const CustomAppBarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        const CustomAppbarArrow(
          text: 'منى المنشاوي',
        ),
        PositionedDirectional(
          top: 70.h,
          child: Container(
            width: 56.w,
            height: 56.h,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: CachedNetworkImageProvider(
                  'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
