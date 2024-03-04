class FollowServiceModel{
  int? id;
  String? name;
  bool? isNot;

FollowServiceModel({this.name,this.id,this.isNot});

bool changeNotItem(){
  isNot = !isNot!;
  return isNot!;
}
}