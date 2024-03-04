import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/cart/presentation/views/cart_view.dart';
import 'package:orakom/features/home/presentation/views/home_view.dart';
import 'package:orakom/features/layout/presentation/manger/state.dart';
import 'package:orakom/features/more/presentation/views/more_view.dart';
import 'package:orakom/features/my_buuys/presentation/views/my_buys_view.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit(super.initialState);

  static LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bottomScreen = [
    const HomeView(),
    const CartView(),
    const MyBuysView(),
    const MoreView(),
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(ChangeNavState());
  }

}
