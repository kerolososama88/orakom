import 'package:flutter/material.dart';

import 'custom_common_questions_logo.dart';
import 'custom_common_questions_title.dart';
import 'custom_expansion_title_common_questions.dart';

class CustomCommonQuestionsBody extends StatelessWidget {
  const CustomCommonQuestionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomConnectUsTapLogo(),
          CustomCommonQuestionsTitle(),
          CustomExpansionTitleCommonQuestions(),
          CustomExpansionTitleCommonQuestions(),
          CustomExpansionTitleCommonQuestions(),
          CustomExpansionTitleCommonQuestions(),
          CustomExpansionTitleCommonQuestions(),

        ],
      ),
    );
  }
}
