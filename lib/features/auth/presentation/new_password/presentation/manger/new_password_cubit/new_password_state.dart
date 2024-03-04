abstract class NewPasswordState {}

class InitialState extends NewPasswordState {}

class ItemState extends NewPasswordState {
  final String item;

  ItemState({required this.item});
}

class CodeRestorePasswordVisibilityState extends NewPasswordState {}

class NewPasswordRestoreVisibilityState extends NewPasswordState {}

class ConfirmPasswordRestoreVisibilityState extends NewPasswordState {}
