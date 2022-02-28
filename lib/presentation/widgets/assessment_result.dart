import 'package:assessment/cubit/assessment_cubit.dart';
import 'package:assessment/cubit/assessment_state.dart';
import 'package:assessment/model/assesment_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AssessmentResult extends StatelessWidget {
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
          body: ListView.builder(
            itemBuilder: (BuildContext, index) {
              return Card(
                child: ListTile(
                  title: Text(selectedAnswerSet[index].question),
                  // title: Text("This is title"),
                  subtitle: ListView.builder(
                    itemBuilder: (BuildContext, optionindex) {
                      return Card(
                        child: ListTile(
                          subtitle: Text(selectedAnswerSet[index]
                              .options[optionindex]
                              .optionValue),
                          // title: Text("This is title"),
                          // subtitle: Text("This is subtitle"),
                        ),
                      );
                    },
                    itemCount: selectedAnswerSet[index].options.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.all(5),
                    scrollDirection: Axis.vertical,
                  ),
                ),
              );
            },
            itemCount: selectedAnswerSet.length,
            shrinkWrap: true,
            padding: EdgeInsets.all(5),
            scrollDirection: Axis.vertical,
          ),
        );
      },
    );
  }
}
