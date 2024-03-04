class FilterModel {
  bool? isValue;
  String? title;
  int? id;

  FilterModel({this.title, this.isValue,this.id});

  bool changeCheckBoxItem() {
    isValue = !isValue!;
    return isValue!;
  }
}
