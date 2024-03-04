import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/auth/presentation/restore_password/presentation/manger/restore_password_cubit/restore_password_state.dart';


class RestorePasswordCubit extends Cubit<RestorePasswordState> {
  RestorePasswordCubit(super.initialState,);

  static RestorePasswordCubit get(context) => BlocProvider.of(context);

  List<String> listItem = ['Item1', 'Item2', 'Item3', 'Item4'];
  String? selectedItem;
  final TextEditingController restorePasswordController =
  TextEditingController();

  void changeValue(String item) {
    emit(
      RestorePasswordItemState(item: item),
    );
  }
}



