import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/profile/presentation/my_product/presntation/widgets/my_product_item.dart';

class MyProductListView extends StatelessWidget {
  const MyProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 22.h),
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.w,
          childAspectRatio:165.w/230.h,
        ),
        itemBuilder: (BuildContext context, int index) {
          return const MyProductItem();
        },
      ),
    );
  }
}
