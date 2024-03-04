import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/auth/presentation/restore_password/presentation/manger/restore_password_cubit/restore_password_cubit.dart';
import 'package:orakom/features/auth/presentation/restore_password/presentation/views/widgets/restore_password_body.dart';

import '../manger/restore_password_cubit/restore_password_state.dart';

class RestorePasswordView extends StatelessWidget {
  const RestorePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestorePasswordCubit(RegisterInitialState()),
      child: const Scaffold(
        body: RestorePasswordBody(),
      ),
    );
  }
}
