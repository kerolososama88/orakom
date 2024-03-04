import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/text_style.dart';

import '../../../../core/constant/assets_manager.dart';
import '../manger/cubit.dart';
import '../manger/state.dart';

class Layout extends StatelessWidget {
  const Layout({super.key, required this.tabIndex});

  final int tabIndex;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(InitalState())..changeBottom(tabIndex),
      child: BlocBuilder<LayoutCubit, LayoutState>(
        builder: (context, state) {
          var cubit = LayoutCubit.get(context);
          return Scaffold(
            body: cubit.bottomScreen[cubit.currentIndex],
            bottomNavigationBar: Container(
              decoration:  BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
                child: BottomNavigationBar(
                  backgroundColor: AppColors.primary,
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white,
                  showUnselectedLabels: false,
                  showSelectedLabels: false,
                  onTap: (index) {
                    cubit.changeBottom(index);
                  },
                  currentIndex: cubit.currentIndex,
                  items: [
                    BottomNavigationBarItem(
                      icon: Column(
                        children: [
                          Image.asset(
                            width: 24.w,
                            height: 24.h,
                            AssetsManager.home,
                            color: Colors.white,
                          ),
                          Text('الرئيسية',
                              style: Style.textStyle10
                                  .copyWith(color: Colors.white)),
                          if (cubit.currentIndex == 0)
                            Container(
                              height: 8.h,
                              width: 8.h,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                        ],
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Column(
                        children: [
                          Image.asset(
                            width: 26.w,
                            height: 26.h,
                            AssetsManager.cart,
                            color: Colors.white,
                          ),
                          Text('السلة',
                              style: Style.textStyle10
                                  .copyWith(color: Colors.white)),
                          if (cubit.currentIndex == 1)
                            Container(
                              height: 8.h,
                              width: 8.h,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                        ],
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Column(
                        children: [
                          Image.asset(
                            width: 26.w,
                            height: 26.h,
                            AssetsManager.purchases,
                            color: Colors.white,
                          ),
                          Text(
                            'مشترياتي',
                            style:
                                Style.textStyle10.copyWith(color: Colors.white),
                          ),
                          if (cubit.currentIndex == 2)
                            Container(
                              height: 8.h,
                              width: 8.h,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                        ],
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Column(
                        children: [
                          Image.asset(
                            width: 26.w,
                            height: 26.h,
                            AssetsManager.more,
                            color: Colors.white,
                          ),
                          Text('المزيد',
                              style: Style.textStyle10
                                  .copyWith(color: Colors.white)),
                          if (cubit.currentIndex == 3)
                            Container(
                              height: 8.h,
                              width: 8.h,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                        ],
                      ),
                      label: '',
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
