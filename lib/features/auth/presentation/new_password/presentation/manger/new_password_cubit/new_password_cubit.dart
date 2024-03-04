import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'new_password_state.dart';

class NewPasswordCubit extends Cubit<NewPasswordState> {
  NewPasswordCubit(
    super.initialState,
  );

  static NewPasswordCubit get(context) => BlocProvider.of(context);

  final TextEditingController codeRestorePasswordController =
      TextEditingController();

  final TextEditingController newRestorePasswordController =
      TextEditingController();
  final TextEditingController confirmRestorePasswordController =
      TextEditingController();

  Icon suffix = const Icon(Icons.visibility);
  bool isCode = false;
  bool isNewPassword = false;
  bool isConfirmPassword = false;

  changeCodeRestorePasswordVisibility() {
    isCode = !isCode;
    emit(CodeRestorePasswordVisibilityState());
  }

  Widget suffixWidgetChangeCode() {
    return isCode
        ? IconButton(
            icon: const Icon(Icons.visibility_off, color: AppColors.greyColor),
            onPressed: () => changeCodeRestorePasswordVisibility(),
          )
        : IconButton(
            icon: const Icon(Icons.visibility, color: AppColors.greyColor),
            onPressed: () => changeCodeRestorePasswordVisibility(),
          );
  }


  newPasswordRestoreVisibility() {
    isNewPassword = !isNewPassword;
    emit(NewPasswordRestoreVisibilityState());
  }

  Widget suffixWidgetNewPassword() {
    return isNewPassword
        ? IconButton(
            icon: const Icon(Icons.visibility_off, color: AppColors.greyColor),
            onPressed: () => newPasswordRestoreVisibility(),
          )
        : IconButton(
            icon: const Icon(Icons.visibility, color: AppColors.greyColor),
            onPressed: () => newPasswordRestoreVisibility(),
          );
  }


  confirmPasswordRestoreVisibility() {
    isConfirmPassword = !isConfirmPassword;
    emit(ConfirmPasswordRestoreVisibilityState());
  }

  Widget suffixWidgetConfirmPassword() {
    return isConfirmPassword
        ? IconButton(
      icon: const Icon(Icons.visibility_off, color: AppColors.greyColor),
      onPressed: () => confirmPasswordRestoreVisibility(),
    )
        : IconButton(
      icon: const Icon(Icons.visibility, color: AppColors.greyColor),
      onPressed: () => confirmPasswordRestoreVisibility(),
    );
  }
}
