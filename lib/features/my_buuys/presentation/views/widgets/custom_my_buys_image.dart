import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/assets_manager.dart';
import '../../../../../core/constant/text_style.dart';

class CustomMyBuysImage extends StatelessWidget {
  const CustomMyBuysImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 17.h, bottom: 8.h),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 114.w,
                height: 113.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.r),
                  image: const DecorationImage(
                    image: CachedNetworkImageProvider(
                      'https://marketplace.canva.com/EAFLlL2ki8I/1/0/1600w/canva-neon-minimalist-motivational-inspirational-quote-facebook-cover-IN_ZZM_uhQM.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 7.w,
                top: 12.h,
                child: Row(
                  children: [
                    Container(
                      height: 19.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
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
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                right: 11.0.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'المرجع الكامل في التحكم الكهربائي الصناعي',
                    style: Style.textStyle12,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Text(
                      'تقارير  -  PDF',
                      style:
                          Style.textStyle12.copyWith(color: AppColors.greyText),
                    ),
                  ),
                  Text(
                    'PDF (5.03) MB',
                    style:
                        Style.textStyle12.copyWith(color: AppColors.greyText),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    children: [
                      Text(
                        '150 ر.س',
                        style: Style.textStyle14.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        '150 ر.س',
                        style: Style.textStyle14.copyWith(
                          color: AppColors.grayFavColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
