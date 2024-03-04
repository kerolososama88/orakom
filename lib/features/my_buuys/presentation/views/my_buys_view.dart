import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/my_buuys/presentation/manger/my_buys_cubit.dart';
import 'package:orakom/features/my_buuys/presentation/views/widgets/my_buys_body.dart';

class MyBuysView extends StatelessWidget {
  const MyBuysView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyBuysCubit(),
      child: const Scaffold(
        body: MyBuysBody(),
      ),
    );
  }
}
