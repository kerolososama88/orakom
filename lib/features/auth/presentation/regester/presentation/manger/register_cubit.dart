import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/core/constant/app_colors.dart';

import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(
    super.initialState,
  );

  static RegisterCubit get(context) => BlocProvider.of(context);

  List<String> listItem = ['Item1', 'Item2', 'Item3', 'Item4'];
  String? selectedItem;
  final TextEditingController registerPasswordController =
      TextEditingController();
  final TextEditingController registerNewPasswordController =
      TextEditingController();

  void changeValue(String item) {
    emit(
      RegisterItemState(item: item),
    );
  }

  Icon suffix = const Icon(Icons.visibility);
  bool isPassword = false;
  bool isNewPassword = false;

  changePasswordVisibility() {
    isPassword = !isPassword;
    emit(RegisterChangePasswordVisibilityState());
  }

  Widget suffixWidget() {
    return isPassword
        ? IconButton(
            icon: const Icon(Icons.visibility_off, color: AppColors.greyColor),
            onPressed: () => changePasswordVisibility(),
          )
        : IconButton(
            icon: const Icon(Icons.visibility, color: AppColors.greyColor),
            onPressed: () => changePasswordVisibility(),
          );
  }

  changeNewPasswordVisibility() {
    isNewPassword = !isNewPassword;
    emit(RegisterChangeNewPasswordVisibilityState());
  }

  Widget suffixNewWidget() {
    return isNewPassword
        ? IconButton(
            icon: const Icon(Icons.visibility_off, color: AppColors.greyColor),
            onPressed: () => changeNewPasswordVisibility(),
          )
        : IconButton(
            icon: const Icon(Icons.visibility, color: AppColors.greyColor),
            onPressed: () => changeNewPasswordVisibility(),
          );
  }
}
