import 'package:assessment/model/assesment_model.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'assessment_state.freezed.dart';

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

@freezed
class AssessmentItem with _$AssessmentItem {
  const factory AssessmentItem.initial() = _InitialState;
  const factory AssessmentItem.loadingState() = _LoadingState;
  const factory AssessmentItem.loadedState({
    required List<AssessmentModel> loadeddata,
  }) = _LoadedState;

  const factory AssessmentItem.errorState() = _ErrorState;
}

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
