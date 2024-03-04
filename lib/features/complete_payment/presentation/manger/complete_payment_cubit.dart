
import 'package:flutter_bloc/flutter_bloc.dart';

part 'complete_payment_state.dart';

class CompletePaymentCubit extends Cubit<CompletePaymentState> {
  CompletePaymentCubit() : super(CompletePaymentInitial());

  static CompletePaymentCubit get(context) => BlocProvider.of(context);

  int value1 = 0;

  void changeRadio1(int value) {
    value1 = value;
    emit(RadioChange1State());
  }


}
