import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orakom/features/auth/presentation/regester/presentation/manger/register_cubit.dart';
import 'package:orakom/features/auth/presentation/regester/presentation/views/widget/register_view_body.dart';

import '../../../../../../core/widgets/defaultButtom.dart';
import '../../../active_code/presentation/views/active_code_view.dart';
import '../manger/register_state.dart';


class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(InitialState()),
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 31.0.w, vertical: 10.h),
          child: defaultButtom(
            function: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ActiveCodeView(),
                ),
              );
            },
            color: Colors.black,
            text: 'تسجيل جديد',
          ),
        ),
        body: const RegisterViewBody(),
      ),
    );
  }
}
