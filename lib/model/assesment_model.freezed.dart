// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'assesment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssessmentModel _$AssessmentModelFromJson(Map<String, dynamic> json) {
  return _AssessmentModel.fromJson(json);
}

/// @nodoc
class _$AssessmentModelTearOff {
  const _$AssessmentModelTearOff();

  _AssessmentModel call(
      {required String id,
      required String question,
      required List<Option> options,
      required String image,
      required bool multiselect,
      required String type}) {
    return _AssessmentModel(
      id: id,
      question: question,
      options: options,
      image: image,
      multiselect: multiselect,
      type: type,
    );
  }

  AssessmentModel fromJson(Map<String, Object?> json) {
    return AssessmentModel.fromJson(json);
  }
}

/// @nodoc
const $AssessmentModel = _$AssessmentModelTearOff();

/// @nodoc
mixin _$AssessmentModel {
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<Option> get options => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get multiselect => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssessmentModelCopyWith<AssessmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentModelCopyWith<$Res> {
  factory $AssessmentModelCopyWith(
          AssessmentModel value, $Res Function(AssessmentModel) then) =
      _$AssessmentModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String question,
      List<Option> options,
      String image,
      bool multiselect,
      String type});
}

/// @nodoc
class _$AssessmentModelCopyWithImpl<$Res>
    implements $AssessmentModelCopyWith<$Res> {
  _$AssessmentModelCopyWithImpl(this._value, this._then);

  final AssessmentModel _value;
  // ignore: unused_field
  final $Res Function(AssessmentModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? options = freezed,
    Object? image = freezed,
    Object? multiselect = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      multiselect: multiselect == freezed
          ? _value.multiselect
          : multiselect // ignore: cast_nullable_to_non_nullable
              as bool,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AssessmentModelCopyWith<$Res>
    implements $AssessmentModelCopyWith<$Res> {
  factory _$AssessmentModelCopyWith(
          _AssessmentModel value, $Res Function(_AssessmentModel) then) =
      __$AssessmentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String question,
      List<Option> options,
      String image,
      bool multiselect,
      String type});
}

/// @nodoc
class __$AssessmentModelCopyWithImpl<$Res>
    extends _$AssessmentModelCopyWithImpl<$Res>
    implements _$AssessmentModelCopyWith<$Res> {
  __$AssessmentModelCopyWithImpl(
      _AssessmentModel _value, $Res Function(_AssessmentModel) _then)
      : super(_value, (v) => _then(v as _AssessmentModel));

  @override
  _AssessmentModel get _value => super._value as _AssessmentModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? options = freezed,
    Object? image = freezed,
    Object? multiselect = freezed,
    Object? type = freezed,
  }) {
    return _then(_AssessmentModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      multiselect: multiselect == freezed
          ? _value.multiselect
          : multiselect // ignore: cast_nullable_to_non_nullable
              as bool,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssessmentModel extends _AssessmentModel {
  const _$_AssessmentModel(
      {required this.id,
      required this.question,
      required this.options,
      required this.image,
      required this.multiselect,
      required this.type})
      : super._();

  factory _$_AssessmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_AssessmentModelFromJson(json);

  @override
  final String id;
  @override
  final String question;
  @override
  final List<Option> options;
  @override
  final String image;
  @override
  final bool multiselect;
  @override
  final String type;

  @override
  String toString() {
    return 'AssessmentModel(id: $id, question: $question, options: $options, image: $image, multiselect: $multiselect, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AssessmentModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.multiselect, multiselect) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(options),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(multiselect),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$AssessmentModelCopyWith<_AssessmentModel> get copyWith =>
      __$AssessmentModelCopyWithImpl<_AssessmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssessmentModelToJson(this);
  }
}

abstract class _AssessmentModel extends AssessmentModel {
  const factory _AssessmentModel(
      {required String id,
      required String question,
      required List<Option> options,
      required String image,
      required bool multiselect,
      required String type}) = _$_AssessmentModel;
  const _AssessmentModel._() : super._();

  factory _AssessmentModel.fromJson(Map<String, dynamic> json) =
      _$_AssessmentModel.fromJson;

  @override
  String get id;
  @override
  String get question;
  @override
  List<Option> get options;
  @override
  String get image;
  @override
  bool get multiselect;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$AssessmentModelCopyWith<_AssessmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
