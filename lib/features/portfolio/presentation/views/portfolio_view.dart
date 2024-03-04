import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/portfolio/presentation/views/widgets/portfolio_body.dart';

import '../manger/portfolio_cubit.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PortfolioCubit(),
      child: const Scaffold(
        body: PortfolioBody(),
      ),
    );
  }
}
