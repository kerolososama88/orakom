import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/text_style.dart';

import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/assets_manager.dart';

class CustomCommentItem extends StatelessWidget {
  const CustomCommentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.w, right: 17.w),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 56.w,
                height: 56.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: CachedNetworkImageProvider(
                      'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 14.w,
                ),
                child: Column(
                  children: [
                    Text(
                      'منى المنشاوي',
                      style: Style.textStyle15.copyWith(
                        color: AppColors.blackBlack,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          width: 12.w,
                          height: 12.h,
                          AssetsManager.staar,
                          // color: AppColors.primary,
                        ),
                        Image.asset(
                          width: 12.5.w,
                          height: 12.5.h,
                          AssetsManager.staar,
                          // color: AppColors.primary,
                        ),
                        Image.asset(
                          width: 12.5.w,
                          height: 12.5.h,
                          AssetsManager.staar,
                          // color: AppColors.primary,
                        ),
                        Image.asset(
                          width: 12.5.w,
                          height: 12.5.h,
                          AssetsManager.staar,
                          // color: AppColors.primary,
                        ),
                        Image.asset(
                          width: 12.5.w,
                          height: 12.5.h,
                          AssetsManager.staar,
                          // color: AppColors.primary,
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Text(
                          '5.0',
                          style: Style.textStyle13
                              .copyWith(color: AppColors.blackBlack),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 16.w),
                child: Text(
                  '10 مارس,2022',
                  style: Style.textStyle14.copyWith(
                    color: AppColors.cartGreyText,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            maxLines: 2,
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان',
            style: Style.textStyle12.copyWith(
              color: AppColors.itemTextGround,
            ),
          ),
        ],
      ),
    );
  }
}
