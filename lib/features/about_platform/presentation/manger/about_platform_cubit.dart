
import 'package:flutter_bloc/flutter_bloc.dart';

part 'about_platform_state.dart';

class AboutPlatformCubit extends Cubit<AboutPlatformState> {
  AboutPlatformCubit() : super(AboutPlatformInitial());
}
