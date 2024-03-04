class FavoriteModel {
  int? id;
  bool? isFavorite;
  String? name;

  FavoriteModel({this.name,this.id, this.isFavorite});

  bool changeFavoriteItem() {
    isFavorite = !isFavorite!;
    return isFavorite!;
  }
}
