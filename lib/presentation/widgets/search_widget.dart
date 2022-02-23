import 'package:assessment/modal/assesment_modal.dart';

import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final AssessmentModal currentQuestionAnswerSet;
  int currentIndex;
  final List<Option> options;
  List<AssessmentModal>? selectedQuesttions;
  final Function addAnswer;
  SearchWidget({
    Key? key,
    required this.currentQuestionAnswerSet,
    required this.currentIndex,
    required this.options,
    required this.addAnswer,
    this.selectedQuesttions,
  }) : super(key: key);

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.black38.withAlpha(10),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: myController,
                  decoration: InputDecoration(
                    hintText: "Search your location",
                    hintStyle: TextStyle(
                      color: Colors.black.withAlpha(120),
                    ),
                    border: InputBorder.none,
                  ),
                  onChanged: (String keyword) {},
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black.withAlpha(120),
                ),
                iconSize: 50,
                color: Colors.green,
                splashColor: Colors.purple,
                onPressed: () {
                  addAnswer(
                      currentQuestionAnswerSet.question,
                      Option(id: '1', optionValue: myController.text),
                      currentIndex,
                      currentQuestionAnswerSet.multiselect);
                },
              ),
            ],
          ),
        ),
        Text(selectedQuesttions!.length > currentIndex
            ? selectedQuesttions![currentIndex].options[0].optionValue
            : ''),
      ],
    );
  }
}
