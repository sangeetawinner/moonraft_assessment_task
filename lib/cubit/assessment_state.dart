import 'package:equatable/equatable.dart';

import 'package:assessment/modal/assesment_modal.dart';

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
  final List<AssessmentModal> selectedQuesttions;

  AnswerSelectSttate({required this.selectedQuesttions});

  List<Object?> get props => [selectedQuesttions];

  AnswerSelectSttate copyWith({
    final List<AssessmentModal>? selectedQuesttions,
  }) =>
      AnswerSelectSttate(
        selectedQuesttions: selectedQuesttions ?? this.selectedQuesttions,
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
  List<AssessmentModal> loadeddata = [];
  List<Object> get props => [loadeddata];
}

class ErrorState extends AssessmentItem {
  List<Object> get props => [];
}
