import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/home/presentation/manger/home_cubit.dart';
import 'package:orakom/features/home/presentation/views/widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(HomeInitialState()),
      child: const Scaffold(
        body: HomeBody(),
      ),
    );
  }
}
