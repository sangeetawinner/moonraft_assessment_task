// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Option _$OptionFromJson(Map<String, dynamic> json) {
  return _Option.fromJson(json);
}

/// @nodoc
class _$OptionTearOff {
  const _$OptionTearOff();

  _Option call({required String id, required String optionValue}) {
    return _Option(
      id: id,
      optionValue: optionValue,
    );
  }

  Option fromJson(Map<String, Object?> json) {
    return Option.fromJson(json);
  }
}

/// @nodoc
const $Option = _$OptionTearOff();

/// @nodoc
mixin _$Option {
  String get id => throw _privateConstructorUsedError;
  String get optionValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionCopyWith<Option> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionCopyWith<$Res> {
  factory $OptionCopyWith(Option value, $Res Function(Option) then) =
      _$OptionCopyWithImpl<$Res>;
  $Res call({String id, String optionValue});
}

/// @nodoc
class _$OptionCopyWithImpl<$Res> implements $OptionCopyWith<$Res> {
  _$OptionCopyWithImpl(this._value, this._then);

  final Option _value;
  // ignore: unused_field
  final $Res Function(Option) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? optionValue = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      optionValue: optionValue == freezed
          ? _value.optionValue
          : optionValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OptionCopyWith<$Res> implements $OptionCopyWith<$Res> {
  factory _$OptionCopyWith(_Option value, $Res Function(_Option) then) =
      __$OptionCopyWithImpl<$Res>;
  @override
  $Res call({String id, String optionValue});
}

/// @nodoc
class __$OptionCopyWithImpl<$Res> extends _$OptionCopyWithImpl<$Res>
    implements _$OptionCopyWith<$Res> {
  __$OptionCopyWithImpl(_Option _value, $Res Function(_Option) _then)
      : super(_value, (v) => _then(v as _Option));

  @override
  _Option get _value => super._value as _Option;

  @override
  $Res call({
    Object? id = freezed,
    Object? optionValue = freezed,
  }) {
    return _then(_Option(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      optionValue: optionValue == freezed
          ? _value.optionValue
          : optionValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Option extends _Option {
  const _$_Option({required this.id, required this.optionValue}) : super._();

  factory _$_Option.fromJson(Map<String, dynamic> json) =>
      _$$_OptionFromJson(json);

  @override
  final String id;
  @override
  final String optionValue;

  @override
  String toString() {
    return 'Option(id: $id, optionValue: $optionValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Option &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.optionValue, optionValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(optionValue));

  @JsonKey(ignore: true)
  @override
  _$OptionCopyWith<_Option> get copyWith =>
      __$OptionCopyWithImpl<_Option>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OptionToJson(this);
  }
}

abstract class _Option extends Option {
  const factory _Option({required String id, required String optionValue}) =
      _$_Option;
  const _Option._() : super._();

  factory _Option.fromJson(Map<String, dynamic> json) = _$_Option.fromJson;

  @override
  String get id;
  @override
  String get optionValue;
  @override
  @JsonKey(ignore: true)
  _$OptionCopyWith<_Option> get copyWith => throw _privateConstructorUsedError;
}
