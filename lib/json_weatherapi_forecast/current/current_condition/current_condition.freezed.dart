// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentCondition _$CurrentConditionFromJson(Map<String, dynamic> json) {
  return _CurrentCondition.fromJson(json);
}

/// @nodoc
mixin _$CurrentCondition {
  String get text => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentConditionCopyWith<CurrentCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentConditionCopyWith<$Res> {
  factory $CurrentConditionCopyWith(
          CurrentCondition value, $Res Function(CurrentCondition) then) =
      _$CurrentConditionCopyWithImpl<$Res, CurrentCondition>;
  @useResult
  $Res call({String text, String icon});
}

/// @nodoc
class _$CurrentConditionCopyWithImpl<$Res, $Val extends CurrentCondition>
    implements $CurrentConditionCopyWith<$Res> {
  _$CurrentConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentConditionImplCopyWith<$Res>
    implements $CurrentConditionCopyWith<$Res> {
  factory _$$CurrentConditionImplCopyWith(_$CurrentConditionImpl value,
          $Res Function(_$CurrentConditionImpl) then) =
      __$$CurrentConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String icon});
}

/// @nodoc
class __$$CurrentConditionImplCopyWithImpl<$Res>
    extends _$CurrentConditionCopyWithImpl<$Res, _$CurrentConditionImpl>
    implements _$$CurrentConditionImplCopyWith<$Res> {
  __$$CurrentConditionImplCopyWithImpl(_$CurrentConditionImpl _value,
      $Res Function(_$CurrentConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
  }) {
    return _then(_$CurrentConditionImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: true)
class _$CurrentConditionImpl
    with DiagnosticableTreeMixin
    implements _CurrentCondition {
  _$CurrentConditionImpl({required this.text, required this.icon});

  factory _$CurrentConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentConditionImplFromJson(json);

  @override
  final String text;
  @override
  final String icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentCondition(text: $text, icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentCondition'))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentConditionImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentConditionImplCopyWith<_$CurrentConditionImpl> get copyWith =>
      __$$CurrentConditionImplCopyWithImpl<_$CurrentConditionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentConditionImplToJson(
      this,
    );
  }
}

abstract class _CurrentCondition implements CurrentCondition {
  factory _CurrentCondition(
      {required final String text,
      required final String icon}) = _$CurrentConditionImpl;

  factory _CurrentCondition.fromJson(Map<String, dynamic> json) =
      _$CurrentConditionImpl.fromJson;

  @override
  String get text;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$CurrentConditionImplCopyWith<_$CurrentConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
