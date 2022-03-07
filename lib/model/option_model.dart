import 'package:freezed_annotation/freezed_annotation.dart';
part 'option_model.freezed.dart';
part 'option_model.g.dart';

@freezed
class Option with _$Option {
  const Option._();
  const factory Option({
    required String id,
    required String optionValue,
    //@JsonKey('option_value')  String optionValue,
    // @Default('')  String optionValue,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}
