class MyBuysModel{
  int? id;
  bool? isFollow;
  String? name;

  MyBuysModel({this.name,this.id, this.isFollow
  });

  bool changeFavoriteItem() {
    isFollow = !isFollow!;
    return isFollow!;
  }
}