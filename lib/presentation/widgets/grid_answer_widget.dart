import 'package:flutter/material.dart';

import 'package:assessment/modal/assesment_modal.dart';

class GridAnswerWidget extends StatelessWidget {
  final AssessmentModal currentQuestionAnswerSet;
  int currentIndex;
  final List<Option> options;
  List<AssessmentModal>? selectedQuesttions;
  final Function addAnswer;
  GridAnswerWidget({
    Key? key,
    required this.currentQuestionAnswerSet,
    required this.currentIndex,
    required this.options,
    required this.addAnswer,
    this.selectedQuesttions,
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
        options.length,
        (index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: selectedQuesttions!.length > currentIndex
                    ? selectedQuesttions![currentIndex]
                            .options
                            .contains(options[index])
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
                      Text(options[index].optionValue,
                          style: const TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.normal)),
                    ],
                  ),
                  onTap: () {
                    addAnswer(currentQuestionAnswerSet.question, options[index],
                        currentIndex, currentQuestionAnswerSet.multiselect);
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
