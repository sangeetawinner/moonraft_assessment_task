import 'package:flutter/material.dart';

import 'package:assessment/presentation/container/asssessment_container.dart';

class AssessmentScreen extends StatelessWidget {
  const AssessmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AssessmentContainer(),
    );
  }
}
