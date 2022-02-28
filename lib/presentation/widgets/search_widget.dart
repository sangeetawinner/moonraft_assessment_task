import 'package:assessment/model/assesment_model.dart';
import 'package:assessment/model/option_model.dart';

import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final AssessmentModel currentQuestionAnswerSet;
  int currentIndex;

  List<AssessmentModel>? selectedQuestionAnswerSet;
  final Function addAnswer;
  SearchWidget({
    Key? key,
    required this.currentQuestionAnswerSet,
    required this.currentIndex,
    required this.addAnswer,
    this.selectedQuestionAnswerSet,
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
                    currentQuestionAnswerSet,
                    Option(id: '1', optionValue: myController.text),
                    currentIndex,
                  );
                },
              ),
            ],
          ),
        ),
        Text(selectedQuestionAnswerSet!.length > currentIndex
            ? selectedQuestionAnswerSet![currentIndex].options[0].optionValue
            : ''),
      ],
    );
  }
}
