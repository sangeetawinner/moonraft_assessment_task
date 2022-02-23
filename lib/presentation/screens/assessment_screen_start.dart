import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:assessment/cubit/assessment_cubit.dart';
import 'package:assessment/presentation/container/asssessment_container.dart';
import 'package:assessment/repository/assessment_repository.dart';

class AssessmentScreenStart extends StatelessWidget {
  const AssessmentScreenStart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AssessmentCubit>(
      create: (context) =>
          AssessmentCubit(assessmentRepository: AssessmentRepository())
            ..getData(),
      // child: AssessmentScreen(),
      child: AssessmentContainer(),
    );
  }
}
