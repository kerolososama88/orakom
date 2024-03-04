import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/filter/data/models/filter_model.dart';

import 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterInitial());

  static FilterCubit get(context) => BlocProvider.of(context);
  final List<FilterModel> list = [
    FilterModel(id: 0, isValue: true, title: 'ما قبل الروضة'),
    FilterModel(id: 1, isValue: true, title: 'الروضة'),
  ];

  onChangeCheckBoxItem(FilterModel item) {
    item.changeCheckBoxItem();
    emit(ChangeCheckBoxSuccess());
  }
}
