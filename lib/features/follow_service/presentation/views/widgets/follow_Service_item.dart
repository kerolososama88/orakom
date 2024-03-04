import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/assets_manager.dart';
import 'package:orakom/core/constant/text_style.dart';
import 'package:orakom/features/follow_service/data/models/follow_service_model.dart';
import 'package:orakom/features/follow_service/presentation/manger/follow_service_cubit.dart';

import '../../manger/follow_service_state.dart';

class FollowServiceItem extends StatelessWidget {
  const FollowServiceItem({super.key, required this.model});

  final FollowServiceModel model;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FollowServiceCubit, FollowServiceState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                '${model.name}',
                style: Style.textStyle13.copyWith(
                  color: AppColors.completePaymentBlack,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Transform.scale(
                scale: 0.5.h,
                child: CupertinoSwitch(
                  activeColor: AppColors.switchColor,
                  trackColor: AppColors.primary,
                  value: model.isNot!?false:true,
                  onChanged: (value) {
                    FollowServiceCubit.get(context).onChangeNotItem(model);
                  },
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.asset(
                  width: 13.w,
                  height: 12.h,
                  AssetsManager.deleteee
              ),
            ),
          ],
        );
      },
    );
  }
}
