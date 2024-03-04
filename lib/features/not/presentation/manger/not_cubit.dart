import 'package:flutter_bloc/flutter_bloc.dart';

import 'not_state.dart';

class NotCubit extends Cubit<NotState> {
  NotCubit() : super(NotInitial());
}
