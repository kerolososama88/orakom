import 'package:flutter/material.dart';
import 'package:orakom/features/complaints/presentation/views/widgets/complaints_body.dart';

class ComplaintsView extends StatelessWidget {
  const ComplaintsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ComplaintsBody(),
    );
  }
}
