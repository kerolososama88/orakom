import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/filter/presentation/manger/filter_cubit.dart';
import 'package:orakom/features/profile/presentation/view/widgets/profile_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterCubit(),
      child: const Scaffold(
        body: ProfileBody(),
      ),
    );
  }
}
