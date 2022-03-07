import 'package:flutter/material.dart';

import 'package:assessment/model/assesment_model.dart';

class AssessmentResult extends StatelessWidget {
  final List<AssessmentModel> selectedAnswerSet;

  const AssessmentResult({Key? key, required this.selectedAnswerSet})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) {
        return Card(
          child: ListTile(
            title: Text(selectedAnswerSet[index].question),
            subtitle: ListView.builder(
              itemBuilder: (BuildContext context, optionindex) {
                return Card(
                  child: ListTile(
                    subtitle: Text(selectedAnswerSet[index]
                        .options[optionindex]
                        .optionValue),
                  ),
                );
              },
              itemCount: selectedAnswerSet[index].options.length,
              shrinkWrap: true,
              padding: const EdgeInsets.all(5),
              scrollDirection: Axis.vertical,
            ),
          ),
        );
      },
      itemCount: selectedAnswerSet.length,
      shrinkWrap: true,
      padding: const EdgeInsets.all(5),
      scrollDirection: Axis.vertical,
    );
  }
}
