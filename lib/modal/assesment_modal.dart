class AssessmentModal {
  AssessmentModal({
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

  AssessmentModal copyWith({
    String? id,
    String? question,
    List<Option>? options,
    String? image,
    bool? multiselect,
    String? type,
  }) =>
      AssessmentModal(
        id: id ?? this.id,
        question: question ?? this.question,
        options: options ?? this.options,
        image: image ?? this.image,
        multiselect: multiselect ?? this.multiselect,
        type: type ?? this.type,
      );
  factory AssessmentModal.fromJson(Map<String?, dynamic> json) =>
      AssessmentModal(
        id: json["id"],
        question: json["question"],
        options:
            List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
        image: json["image"],
        multiselect: json["multiselect"],
        type: json["type"],
      );
}

class Option {
  Option({
    required this.id,
    required this.optionValue,
  });

  final String id;
  final String optionValue;
  Option copyWith({
    String? id,
    String? optionValue,
  }) =>
      Option(
        id: id ?? this.id,
        optionValue: optionValue ?? this.optionValue,
      );
  factory Option.fromJson(Map<String, dynamic> json) => Option(
        id: json["id"],
        optionValue: json["option_value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "option_value": optionValue,
      };
}
