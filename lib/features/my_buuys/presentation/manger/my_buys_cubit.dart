import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/my_buuys/data/models/my_buuys_model.dart';

import 'my_buys_state.dart';

class MyBuysCubit extends Cubit<MyBuysState> {
  MyBuysCubit() : super(MyBuysInitial());

  static MyBuysCubit get(context) => BlocProvider.of(context);

  List<MyBuysModel> list = [
    MyBuysModel(
      isFollow: true,
      id: 0,
      name: 'منى المنشاوي',
    ),
    MyBuysModel(
      isFollow: true,
      id: 1,
      name: 'منى المنشاوي',
    ),
  ];

  onChangeFollowItem(MyBuysModel item) {
    item.changeFavoriteItem();
    emit(ChangeFollowSuccess());
  }
}
