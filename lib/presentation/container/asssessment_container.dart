import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:assessment/cubit/assessment_cubit.dart';
import 'package:assessment/cubit/assessment_state.dart';
import 'package:assessment/modal/assesment_modal.dart';
import 'package:assessment/presentation/widgets/page_body_widget.dart';

class AssessmentContainer extends StatelessWidget {
  AssessmentContainer({Key? key}) : super(key: key);
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    AssessmentCubit _cubit;

    void addAnswer(question, Option option, index, multiselect) {
      BlocProvider.of<AssessmentCubit>(context)
          .addAnswer(question, option, index, multiselect);
    }

    return Scaffold(
      body: BlocBuilder<AssessmentCubit, AssessmentState>(
        builder: (context, state) {
          _cubit = BlocProvider.of<AssessmentCubit>(context);
          if (state.assessmentItem is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.assessmentItem is LoadedState) {
            List<AssessmentModal> questions =
                (state.assessmentItem as LoadedState).loadeddata;
            int currentPageIndex = 0;
            return PageView.builder(
              controller: pageController,
              onPageChanged: (index) {},
              itemCount: questions.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return PageBodyWidget(
                  selectedQuesttions:
                      state.answerSelectSttate.selectedQuesttions,
                  currentQuestionAnswerSet: questions[index],
                  currentIndex: index,
                  length: questions.length.toString(),
                  pageController: pageController,
                  addAnswer: addAnswer,
                ); // you forgot this
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
