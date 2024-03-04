import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/follow_service_model.dart';
import 'follow_service_state.dart';

class FollowServiceCubit extends Cubit<FollowServiceState> {
  FollowServiceCubit() : super(FollowServiceInitial());

  static FollowServiceCubit get(context) => BlocProvider.of(context);
  final List<FollowServiceModel> list = [
    FollowServiceModel(
      name: 'Mohamed alaa',
      id: 0,
      isNot: false,
    ),
    FollowServiceModel(
      name: 'mo alaa',
      id: 1,
      isNot: false,
    ),
    FollowServiceModel(
      name: 'Mohamed alaa',
      id: 0,
      isNot: false,
    ),
    FollowServiceModel(
      name: 'mo alaa',
      id: 1,
      isNot: false,
    ),
  ];

  onChangeNotItem(FollowServiceModel item){
    item.changeNotItem();
    emit(ChangeNotSuccess());
  }
}
