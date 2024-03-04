import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/follow_service/presentation/manger/follow_service_cubit.dart';
import 'package:orakom/features/follow_service/presentation/views/widgets/follow_service_body.dart';

class FollowServiceView extends StatelessWidget {
  const FollowServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FollowServiceCubit(),
      child: const Scaffold(
        body: FollowServiceBody(),
      ),
    );
  }
}
