import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:assessment/cubit/assessment_state.dart';
import 'package:assessment/modal/assesment_modal.dart';
import 'package:assessment/repository/assessment_repository.dart';

class AssessmentCubit extends Cubit<AssessmentState> {
  AssessmentCubit({required this.assessmentRepository})
      : super(AssessmentState(
          assessmentItem: InitialState(),
          answerSelectSttate: AnswerSelectSttate(
            selectedQuesttions: [],
          ),
        )) {
    getData();
  }

  final AssessmentRepository assessmentRepository;

  //this function will load data from json file and initialize to data modal
  Future<void> getData() async {
    try {
      emit(state.copyWith(assessmentItem: LoadingState()));
      final List<AssessmentModal> item = await assessmentRepository.readJson();
      emit(state.copyWith(assessmentItem: LoadedState(item)));
    } catch (e) {
      emit(state.copyWith(
        assessmentItem: ErrorState(),
      ));
    }
  }

  ///this  function will take question String Option in dattamodal format, currentquestionindex and type whether question is multiselect or not
  ///first this function will check whether current question already selectted or not if selected then we will  update currentquestion with their updated options
  ///in option  update first we will check the type of question if multiselect then  we will add more option  if tthat is not in the current option list.
  void addAnswer(question, Option option, int questionIndex, multiselect) {
    final List<AssessmentModal> selectedQuesttions = [
      ...state.answerSelectSttate.selectedQuesttions
    ];
    if (selectedQuesttions.length == questionIndex &&
        !selectedQuesttions.contains(question)) {
      List<Option> optiondata = [];
      optiondata.add(option);
      AssessmentModal newitem = AssessmentModal(
          id: '',
          question: question,
          options: optiondata,
          image: '',
          multiselect: multiselect,
          type: '');
      selectedQuesttions.add(newitem);
      inspect(selectedQuesttions);

      emit(state.copyWith(
        answerSelectSttate: state.answerSelectSttate
            .copyWith(selectedQuesttions: selectedQuesttions),
      ));
    } else {
      List<Option> optiondata = selectedQuesttions[questionIndex].options;
      if (selectedQuesttions[questionIndex].multiselect) {
        if (!optiondata.contains(option)) {
          optiondata.add(option);
        } else {
          optiondata.remove(option);
        }
      } else {
        optiondata = [];
        optiondata.add(option);
      }

      AssessmentModal updatedcount =
          selectedQuesttions[questionIndex].copyWith(options: optiondata);
      selectedQuesttions[questionIndex] = updatedcount;

      inspect(selectedQuesttions);
    }
    emit(
      state.copyWith(
        answerSelectSttate: state.answerSelectSttate
            .copyWith(selectedQuesttions: selectedQuesttions),
      ),
    );
  }
}
