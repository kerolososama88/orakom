import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/features/home/presentation/views/widgets/widget/custom_description_home.dart';
import 'package:orakom/features/home/presentation/views/widgets/widget/custom_image_home.dart';
import 'package:orakom/features/home/presentation/views/widgets/widget/custom_name_home.dart';
import 'package:orakom/features/home/presentation/views/widgets/widget/custom_price_home.dart';
import 'package:orakom/features/product_details/presentation/views/product_details_view.dart';

class CustomHomeListViewItem extends StatelessWidget {
  const CustomHomeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 147.w,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.3,
          color: AppColors.borderColor,
        ),
        borderRadius: BorderRadius.circular(7.r),
      ),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const ProductDetailsView() ,),);
        },
        child: const Column(
          children: [
            CustomImageHome(),
            CustomDescriptionHome(
              descriptionText: 'المرجع الكامل في التحكمالكهربائي الصناعي',
            ),
            CustomPriceHome(
              price: '150',
            ),
            CustomNameHome(
              nameText: 'منى المنشاوي',
            ),
          ],
        ),
      ),
    );
  }
}
