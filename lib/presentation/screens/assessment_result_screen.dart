import 'package:flutter/material.dart';

import 'package:assessment/presentation/container/assessment_result_container.dart';

class AssessmentResultScreen extends StatelessWidget {
  const AssessmentResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AssesmentResultContainer(),
    );
  }
}
