import 'package:flutter/material.dart';

import 'custom_connect_us_action.dart';
import 'custom_connect_us_social.dart';
import 'custom_connect_us_form.dart';

class CustomConnectUsBody extends StatelessWidget {
  const CustomConnectUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomConnectUsForm(),
          CustomConnectUsAction(),
          CustomConnectUsSocial(),
        ],
      ),
    );
  }
}
