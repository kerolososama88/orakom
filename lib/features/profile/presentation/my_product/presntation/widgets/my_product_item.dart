import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/assets_manager.dart';
import '../../../../../../core/constant/text_style.dart';

class MyProductItem extends StatelessWidget {
  const MyProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                          Container(
                            height: 21.h,
                            width: 32.w,
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.w, vertical: 3.h),
                            decoration: BoxDecoration(
                              color: AppColors.backGroundIcon,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Image.asset(
                              height: 12.h,
                              width: 13.w,
                              AssetsManager.heart,
                            ),
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
    );
  }
}
