import 'package:flutter/material.dart';

import 'custom_details_educational_level.dart';
import 'custom_details_form.dart';
import 'custom_subject_species.dart';

class CustomDetailsView extends StatelessWidget {
  const CustomDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomDetailsEducationalLevel(),
          CustomSubjectSpecies(),
          CustomDetailsForm(),
        ],
      ),
    );
  }
}
