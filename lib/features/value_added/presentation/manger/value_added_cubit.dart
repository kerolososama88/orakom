
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/value_added/presentation/manger/value_added_state.dart';

class ValueAddedCubit extends Cubit<ValueAddedState> {
  ValueAddedCubit() : super(ValueAddedInitial());
}
