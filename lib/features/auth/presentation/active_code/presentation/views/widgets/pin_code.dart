import 'package:flutter/material.dart';
import 'package:orakom/core/widgets/custom_pin_code.dart';

class PinCode extends StatelessWidget {
  const PinCode({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPinCode(
      onComplete: (dynamic) {},
    );
  }
}
