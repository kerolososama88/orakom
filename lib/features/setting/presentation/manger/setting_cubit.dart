

import 'package:flutter_bloc/flutter_bloc.dart';

part 'setting_state.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit() : super(SettingInitial());
  static SettingCubit get(context) => BlocProvider.of(context);
  int value1 = 0;
  bool isSwitch1=false;
  bool isSwitch2=false;
  bool isSwitch3=true;

  void changeRadioSetting(int value) {
    value1 = value;
    emit(RadioChangeSettingState());
  }
  void changeSwitchSetting1(bool value) {
    isSwitch1 =value ;
    emit(SwitchChangeSetting1State());
  }
  void changeSwitchSetting2(bool value) {
    isSwitch2 =value ;
    emit(SwitchChangeSetting2State());
  }
  void changeSwitchSetting3(bool value) {
    isSwitch3 =value ;
    emit(SwitchChangeSetting3State());
  }

}
