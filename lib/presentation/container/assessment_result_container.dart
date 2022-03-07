import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:assessment/cubit/assessment_cubit.dart';
import 'package:assessment/cubit/assessment_state.dart';
import 'package:assessment/model/assesment_model.dart';
import 'package:assessment/presentation/widgets/assessment_result.dart';

class AssesmentResultContainer extends StatelessWidget {
  const AssesmentResultContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AssessmentCubit, AssessmentState>(
      builder: (context, state) {
        List<AssessmentModel> selectedAnswerSet =
            state.answerSelectSttate.selectedQuestionAnswerSet;
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text("Assessment Result"),
            automaticallyImplyLeading: false,
          ),
          body: AssessmentResult(selectedAnswerSet: selectedAnswerSet),
        );
      },
    );
  }
}
