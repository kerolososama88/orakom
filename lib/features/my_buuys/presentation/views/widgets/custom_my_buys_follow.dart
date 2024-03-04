import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/my_buuys/data/models/my_buuys_model.dart';
import 'package:orakom/features/my_buuys/presentation/manger/my_buys_cubit.dart';
import 'package:orakom/features/my_buuys/presentation/manger/my_buys_state.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/assets_manager.dart';
import '../../../../../core/constant/text_style.dart';

class CustomMyBuysFollow extends StatelessWidget {
  const CustomMyBuysFollow({super.key, required this.myBuysModel});

  final MyBuysModel myBuysModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: 12.r,
          backgroundImage: const CachedNetworkImageProvider(
            'https://www.perfocal.com/blog/content/images/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            right: 8.0.w,
          ),
          child: Text(
            'منى المنشاوي',
            style: Style.textStyle11,
          ),
        ),
        BlocBuilder<MyBuysCubit, MyBuysState>(
          builder: (context, state) {
            return InkWell(
              onTap: () => MyBuysCubit.get(context).onChangeFollowItem(myBuysModel),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 7.0.w, right: 23.w),
                    child: myBuysModel.isFollow!
                        ? Image.asset(
                      width: 17.w,
                      height: 17.h,
                      AssetsManager.unfollow,
                    )
                        : Image.asset(
                      width: 17.w,
                      height: 17.h,
                      AssetsManager.follow,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    myBuysModel.isFollow!?'متابعه':'الغاء المتابعه',
                    style: Style.textStyle13.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
