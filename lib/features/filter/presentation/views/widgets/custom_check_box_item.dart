import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';
import 'package:orakom/features/filter/data/models/filter_model.dart';
import 'package:orakom/features/filter/presentation/manger/filter_cubit.dart';

import '../../manger/filter_state.dart';

class CustomCheckBoxItem extends StatelessWidget {
  const CustomCheckBoxItem({super.key, required this.filterModel});

  final FilterModel filterModel;
  @override
  Widget build(BuildContext context) {
    var cubit = FilterCubit.get(context);
    return Row(
      children: [
        BlocBuilder<FilterCubit, FilterState>(
          builder: (context, state) {
            return Checkbox(
                checkColor: AppColors.primary,
                hoverColor: AppColors.primary,
                activeColor: AppColors.whiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.r),
                ),
                side: const BorderSide(
                  // style:BorderStyle.solid,
                  color: AppColors.primary,
                ),
                value: filterModel.isValue!?true:false,
                onChanged: (value) {
                  cubit.onChangeCheckBoxItem(filterModel);
                });
          },
        ),
        Text(
          '${filterModel.title}',
          style: Style.textStyle12.copyWith(
            color: AppColors.blackBlack,
          ),
        ),
      ],
    );
  }
}
