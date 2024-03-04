import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/auth/presentation/login/presentation/manger/login_cubit.dart';

import '../../manger/login_state.dart';

class DropDown extends StatelessWidget {
  const DropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(InitialState()),
      child: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return Center(
                child: DropdownButton(
                  value: state is ItemState ? state.item : null,
                  items: LoginCubit.get(context)
                      .listItem
                      .map(
                        (item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (newValue) {
                    LoginCubit.get(context).changeValue(newValue!);
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
