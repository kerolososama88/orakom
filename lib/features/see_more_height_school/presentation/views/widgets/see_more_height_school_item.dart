import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/assets_manager.dart';
import '../../../../../core/constant/text_style.dart';
import '../../../../home/presentation/views/widgets/widget/custom_description_home.dart';
import '../../../../home/presentation/views/widgets/widget/custom_name_home.dart';
import '../../../../home/presentation/views/widgets/widget/custom_price_home.dart';

class SeeMoreHeightSchoolItem extends StatelessWidget {
  const SeeMoreHeightSchoolItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.3,
          color: AppColors.borderColor,
        ),
        borderRadius: BorderRadius.circular(7.r),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              CachedNetworkImage(
                height: 104.h,
                width: double.infinity,
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
                      height: 19.h,
                      width: 20.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 4.w, vertical: 3.h),
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
                    SizedBox(
                      width: 90.w,
                    ),
                    Container(
                      height: 19.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 4.w, vertical: 3.h),
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
          const CustomDescriptionHome(
            descriptionText: 'المرجع الكامل في التحكمالكهربائي الصناعي',
          ),
          const CustomPriceHome(
            price: '150',
          ),
          const CustomNameHome(
            nameText: 'منى المنشاوي',
          ),
        ],
      ),
    );
  }
}
