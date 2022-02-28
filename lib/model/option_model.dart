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
