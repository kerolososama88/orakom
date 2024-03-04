import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/setting/presentation/manger/setting_cubit.dart';
import 'package:orakom/features/setting/presentation/views/widgets/setting_body.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingCubit(),
      child: const Scaffold(
        body: SettingBody(),
      ),
    );
  }
}
