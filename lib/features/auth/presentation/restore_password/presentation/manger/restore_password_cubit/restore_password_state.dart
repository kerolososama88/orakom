abstract class RestorePasswordState {}

class RegisterInitialState extends RestorePasswordState {}
class RestorePasswordItemState extends RestorePasswordState{
  final String item;

  RestorePasswordItemState({required this.item});
}
