import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:assessment/model/option_model.dart';
import 'package:assessment/cubit/assessment_cubit.dart';
import 'package:assessment/cubit/assessment_state.dart';
import 'package:assessment/model/assesment_model.dart';
import 'package:assessment/presentation/widgets/page_body_widget.dart';

class AssessmentContainer extends StatelessWidget {
  AssessmentContainer({Key? key}) : super(key: key);
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    void addAnswer(AssessmentModel question, Option option, index) {
      BlocProvider.of<AssessmentCubit>(context)
          .addAnswer(question, option, index);
    }

    return BlocBuilder<AssessmentCubit, AssessmentState>(
      builder: (context, state) {
        return state.assessmentItem.maybeWhen(
          loadedState: (loadeddata) => PageView.builder(
            controller: pageController,
            onPageChanged: (index) {},
            itemCount: loadeddata.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return PageBodyWidget(
                selectedQuestionAnswerSet:
                    state.answerSelectSttate.selectedQuestionAnswerSet,
                currentQuestionAnswerSet: loadeddata[index],
                currentIndex: index,
                length: loadeddata.length.toString(),
                pageController: pageController,
                addAnswer: addAnswer,
              ); // you forgot this
            },
          ),
          orElse: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        );
      },
    );
  }
}
