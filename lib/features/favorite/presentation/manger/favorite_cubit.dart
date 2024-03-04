import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/favorite_model.dart';
import 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());

  static FavoriteCubit get(context) => BlocProvider.of(context);

  List<FavoriteModel> listFavorite = [
    FavoriteModel(
      isFavorite: true,
      id: 0,
      name: 'منى المنشاوي',
    ),
    FavoriteModel(
      isFavorite: true,
      id: 1,
      name: 'منى المنشاوي',
    ),
  ];

  onChangeFavoriteItem(FavoriteModel item){
    item.changeFavoriteItem();
    emit(ChangeFavoritesSuccess());
  }
}
