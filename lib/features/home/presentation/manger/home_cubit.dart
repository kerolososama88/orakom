import 'package:flutter_bloc/flutter_bloc.dart';


part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(super.initialState);

  static HomeCubit get(context) => BlocProvider.of(context);

  int index = 0;

  onPageChanged(int index) {
    this.index = index;
    emit(HomeIndexChange());
  }

}
