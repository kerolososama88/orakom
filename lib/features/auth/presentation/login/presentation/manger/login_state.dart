abstract class LoginState {}
class InitialState extends LoginState{}

class ItemState extends LoginState{
  final String item;

  ItemState({required this.item});
}


class LoginChangePasswordVisibilityState extends LoginState{}