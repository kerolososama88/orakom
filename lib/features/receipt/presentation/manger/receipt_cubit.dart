import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/receipt/presentation/manger/receipt_state.dart';

class ReceiptCubit extends Cubit<ReceiptState> {
  ReceiptCubit() : super(ReceiptInitial());
}
