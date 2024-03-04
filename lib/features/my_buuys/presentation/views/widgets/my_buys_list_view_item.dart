import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/my_buuys/data/models/my_buuys_model.dart';
import 'custom_my_buys_action.dart';
import 'custom_my_buys_follow.dart';
import 'custom_my_buys_image.dart';

class MyBuysListViewItem extends StatelessWidget {
  const MyBuysListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: 17.0.w, right: 17.w, top: 22.h, bottom: 17.h),
          child: Column(
            children: [
              CustomMyBuysFollow(
                myBuysModel: MyBuysModel(name: 'mef4ik', id: 0, isFollow: true),
              ),
              const CustomMyBuysImage(),
              const CustomMyBuysAction(),
            ],
          ),
        ),
      ],
    );
  }
}
