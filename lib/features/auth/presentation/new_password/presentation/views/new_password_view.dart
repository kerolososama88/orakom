import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/auth/presentation/new_password/presentation/manger/new_password_cubit/new_password_cubit.dart';
import 'package:orakom/features/auth/presentation/new_password/presentation/views/widgets/new_password_body.dart';

import '../manger/new_password_cubit/new_password_state.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewPasswordCubit(InitialState()),
      child: const Scaffold(
        body: NewPasswordBody(),
      ),
    );
  }
}
