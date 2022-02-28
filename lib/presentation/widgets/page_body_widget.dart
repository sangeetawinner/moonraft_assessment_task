import 'package:assessment/route/route.dart';
import 'package:flutter/material.dart';

import 'package:assessment/model/assesment_model.dart';
import 'package:assessment/presentation/widgets/assessment_result.dart';
import 'package:assessment/presentation/widgets/search_widget.dart';
import 'grid_answer_widget.dart';

class PageBodyWidget extends StatelessWidget {
  final AssessmentModel currentQuestionAnswerSet;
  final List<AssessmentModel> selectedQuestionAnswerSet;
  final String length;
  final int currentIndex;
  final PageController pageController;
  final Function addAnswer;
  const PageBodyWidget(
      {Key? key,
      required this.currentQuestionAnswerSet,
      required this.length,
      required this.currentIndex,
      required this.pageController,
      required this.addAnswer,
      required this.selectedQuestionAnswerSet})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://4bgowik9viu406fbr2hsu10z-wpengine.netdna-ssl.com/wp-content/uploads/2020/02/CTA-Orange-Circles.png"),
                  ),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 95.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 25.0),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    pageController.previousPage(
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.easeIn);
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text(
              (currentIndex + 1).toString() + '/' + length,
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text(
              currentQuestionAnswerSet.question,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          currentQuestionAnswerSet.type == answerType.grid.name
              ? GridAnswerWidget(
                  currentQuestionAnswerSet: currentQuestionAnswerSet,
                  currentIndex: currentIndex,
                  addAnswer: addAnswer,
                  selectedQuestionAnswerSet: selectedQuestionAnswerSet,
                )
              : SearchWidget(
                  currentQuestionAnswerSet: currentQuestionAnswerSet,
                  currentIndex: currentIndex,
                  addAnswer: addAnswer,
                  selectedQuestionAnswerSet: selectedQuestionAnswerSet,
                ),
          Align(
            alignment: Alignment.bottomRight,
            child: OutlinedButton(
              onPressed: () {
                selectedQuestionAnswerSet.length > currentIndex
                    ? (selectedQuestionAnswerSet[currentIndex]
                                .options
                                .isNotEmpty &&
                            currentIndex != 4
                        ? pageController.nextPage(
                            duration: Duration(milliseconds: 1000),
                            curve: Curves.easeIn)
                        : Navigator.of(context)
                            .pushNamed(RouteGenerator.assessmentResult))
                    : currentIndex == 4
                        ? Navigator.of(context)
                            .pushNamed(RouteGenerator.assessmentResult)
                        : pageController.nextPage(
                            duration: Duration(milliseconds: 1000),
                            curve: Curves.easeIn);
              },
              style: ButtonStyle(
                backgroundColor: selectedQuestionAnswerSet.length > currentIndex
                    ? selectedQuestionAnswerSet[currentIndex].options.isNotEmpty
                        ? MaterialStateProperty.all(Colors.lightGreen)
                        : MaterialStateProperty.all(Colors.white)
                    : MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                )),
              ),
              child: Text(
                selectedQuestionAnswerSet.length > currentIndex
                    ? (selectedQuestionAnswerSet[currentIndex]
                                .options
                                .isNotEmpty &&
                            currentIndex != 4
                        ? "Next Page"
                        : "Continue")
                    : currentIndex == 4
                        ? "Skip and Finish"
                        : "Next Page",
                style: TextStyle(
                  color: selectedQuestionAnswerSet.length > currentIndex
                      ? selectedQuestionAnswerSet[currentIndex]
                              .options
                              .isNotEmpty
                          ? Colors.white
                          : Colors.grey
                      : Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum answerType { grid, search }
