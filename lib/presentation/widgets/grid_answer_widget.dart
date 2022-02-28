import 'package:flutter/material.dart';

import 'package:assessment/model/assesment_model.dart';

class GridAnswerWidget extends StatelessWidget {
  final AssessmentModel currentQuestionAnswerSet;
  int currentIndex;

  List<AssessmentModel>? selectedQuestionAnswerSet;
  final Function addAnswer;
  GridAnswerWidget({
    Key? key,
    required this.currentQuestionAnswerSet,
    required this.currentIndex,
    this.selectedQuestionAnswerSet,
    required this.addAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: MediaQuery.of(context).size.width /
          (MediaQuery.of(context).size.height / 4),
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 6.0,
      scrollDirection: Axis.vertical,
      children: List.generate(
        currentQuestionAnswerSet.options.length,
        (index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: selectedQuestionAnswerSet!.length > currentIndex
                    ? selectedQuestionAnswerSet![currentIndex]
                            .options
                            .contains(currentQuestionAnswerSet.options[index])
                        ? Colors.green
                        : Colors.white
                    : Colors.white,
                elevation: 3,
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  dense: true,
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(currentQuestionAnswerSet.options[index].optionValue,
                          style: const TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.normal)),
                    ],
                  ),
                  onTap: () {
                    addAnswer(currentQuestionAnswerSet,
                        currentQuestionAnswerSet.options[index], currentIndex);
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
