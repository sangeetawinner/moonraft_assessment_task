import 'package:assessment/model/option_model.dart';

class AssessmentModel {
  AssessmentModel({
    required this.id,
    required this.question,
    required this.options,
    required this.multiselect,
    required this.type,
    required this.image,
  });

  final String id;
  final String question;
  final List<Option> options;
  final String image;
  final bool multiselect;
  final String type;

  AssessmentModel copyWith({
    String? id,
    String? question,
    List<Option>? options,
    String? image,
    bool? multiselect,
    String? type,
  }) =>
      AssessmentModel(
        id: id ?? this.id,
        question: question ?? this.question,
        options: options ?? this.options,
        image: image ?? this.image,
        multiselect: multiselect ?? this.multiselect,
        type: type ?? this.type,
      );
  factory AssessmentModel.fromJson(Map<String?, dynamic> json) =>
      AssessmentModel(
        id: json["id"],
        question: json["question"],
        options:
            List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
        image: json["image"],
        multiselect: json["multiselect"],
        type: json["type"],
      );
}
