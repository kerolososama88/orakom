import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/text_style.dart';

class CustomNameHome extends StatelessWidget {
  const CustomNameHome({super.key, required this.nameText});

  final String nameText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 7.5.h, right: 7.w),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.borderColor,
          ),
        ),
        // borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: 12.r,
            backgroundImage: const CachedNetworkImageProvider(
                'https://www.perfocal.com/blog/content/images/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg'
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 6.0.w,
            ),
            child: Text(
              textAlign: TextAlign.center,
              nameText,
              style: Style.textStyle11,
            ),
          ),
        ],
      ),
    );
  }
}
