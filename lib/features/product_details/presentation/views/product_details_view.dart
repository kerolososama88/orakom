import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/product_details/presentation/manger/product_details_cubit.dart';
import 'package:orakom/features/product_details/presentation/views/widgets/custom_details_action.dart';
import 'package:orakom/features/product_details/presentation/views/widgets/product_details_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailsCubit(),
      child: const Scaffold(
        bottomNavigationBar: CustomDetailsAction(),
        body: ProductDetailsBody(),
      ),
    );
  }
}
