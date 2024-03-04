import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant/app_colors.dart';

part 'add_credit_card_state.dart';

class AddCreditCardCubit extends Cubit<AddCreditCardState> {
  AddCreditCardCubit() : super(AddCreditCardInitial());

  static AddCreditCardCubit get(context) => BlocProvider.of(context);

  final TextEditingController passwordController = TextEditingController();

  Icon suffix = const Icon(Icons.visibility);
  bool isPassword = false;

  changePasswordVisibility() {
    isPassword = !isPassword;
    emit(AddCreditCardVisibilityState());
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
