abstract class RegisterState {}

class InitialState extends RegisterState {}

class RegisterChangePasswordVisibilityState extends RegisterState {}

class RegisterChangeNewPasswordVisibilityState extends RegisterState {}

class RegisterItemState extends RegisterState{
  final String item;

  RegisterItemState({required this.item});
}
