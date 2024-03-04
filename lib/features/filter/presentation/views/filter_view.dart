import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/filter/presentation/manger/filter_cubit.dart';
import 'package:orakom/features/filter/presentation/views/widgets/filter_body.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterCubit(),
      child: const Scaffold(
        body: FilterBody(),
      ),
    );
  }
}
