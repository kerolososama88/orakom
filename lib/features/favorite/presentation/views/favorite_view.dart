import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/favorite/presentation/manger/favorite_cubit.dart';
import 'package:orakom/features/favorite/presentation/views/widgets/favorite_body.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteCubit(),
      child: const Scaffold(
        body: FavoriteBody(),
      ),
    );
  }
}
