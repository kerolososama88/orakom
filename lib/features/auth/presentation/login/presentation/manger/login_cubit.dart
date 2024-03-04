import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/core/constant/app_colors.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
    super.initialState,
  );

  static LoginCubit get(context) => BlocProvider.of(context);

  List<String> listItem = ['Item1', 'Item2', 'Item3', 'Item4'];

  // String? selectedItem;
  final TextEditingController passwordController = TextEditingController();

  void changeValue(String item) {
    emit(
      ItemState(item: item),
    );
  }

  Icon suffix = const Icon(Icons.visibility);
  bool isPassword = false;

  changePasswordVisibility() {
    isPassword = !isPassword;
    emit(LoginChangePasswordVisibilityState());
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
}
