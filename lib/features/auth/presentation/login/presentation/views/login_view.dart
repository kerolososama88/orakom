import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/auth/presentation/login/presentation/manger/login_cubit.dart';
import 'package:orakom/features/auth/presentation/login/presentation/views/widgets/login_view_body.dart';

import '../../../../../../core/widgets/custom_text_bottm.dart';
import '../../../regester/presentation/views/register_view.dart';
import '../manger/login_state.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(InitialState()),
      child: const Scaffold(
        body: LoginViewBody(),
      ),
    );
  }
}
