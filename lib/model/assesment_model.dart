import 'package:assessment/model/option_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'assesment_model.freezed.dart';
part 'assesment_model.g.dart';

@freezed
class AssessmentModel with _$AssessmentModel {
  const AssessmentModel._();
  const factory AssessmentModel({
    required String id,
    required String question,
    required List<Option> options,
    required String image,
    required bool multiselect,
    required String type,
  }) = _AssessmentModel;

  factory AssessmentModel.fromJson(Map<String, dynamic> json) =>
      _$AssessmentModelFromJson(json);
}
