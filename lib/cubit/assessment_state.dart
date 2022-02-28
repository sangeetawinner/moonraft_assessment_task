import 'package:equatable/equatable.dart';

import 'package:assessment/model/assesment_model.dart';

class AssessmentState extends Equatable {
  final AssessmentItem assessmentItem;
  final AnswerSelectSttate answerSelectSttate;

  @override
  List<Object?> get props => [assessmentItem, answerSelectSttate];
  AssessmentState({
    required this.assessmentItem,
    required this.answerSelectSttate,
  });

  AssessmentState copyWith({
    AssessmentItem? assessmentItem,
    AnswerSelectSttate? answerSelectSttate,
  }) =>
      AssessmentState(
        assessmentItem: assessmentItem ?? this.assessmentItem,
        answerSelectSttate: answerSelectSttate ?? this.answerSelectSttate,
      );
}

class AssessmentItem {}

class AnswerSelectSttate {
  final List<AssessmentModel> selectedQuestionAnswerSet;

  AnswerSelectSttate({required this.selectedQuestionAnswerSet});

  List<Object?> get props => [selectedQuestionAnswerSet];

  AnswerSelectSttate copyWith({
    final List<AssessmentModel>? selectedQuestionAnswerSet,
  }) =>
      AnswerSelectSttate(
        selectedQuestionAnswerSet:
            selectedQuestionAnswerSet ?? this.selectedQuestionAnswerSet,
      );
}

class InitialState extends AssessmentItem {
  List<Object> get props => [];
}

class LoadingState extends AssessmentItem {
  List<Object> get props => [];
}

class LoadedState extends AssessmentItem {
  LoadedState(this.loadeddata);
  List<AssessmentModel> loadeddata = [];
  List<Object> get props => [loadeddata];
}

class ErrorState extends AssessmentItem {
  List<Object> get props => [];
}
