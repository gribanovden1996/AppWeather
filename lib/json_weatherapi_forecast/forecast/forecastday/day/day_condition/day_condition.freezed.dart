// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DayCondition _$DayConditionFromJson(Map<String, dynamic> json) {
  return _DayCondition.fromJson(json);
}

/// @nodoc
mixin _$DayCondition {
  String get text => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayConditionCopyWith<DayCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayConditionCopyWith<$Res> {
  factory $DayConditionCopyWith(
          DayCondition value, $Res Function(DayCondition) then) =
      _$DayConditionCopyWithImpl<$Res, DayCondition>;
  @useResult
  $Res call({String text, String icon});
}

/// @nodoc
class _$DayConditionCopyWithImpl<$Res, $Val extends DayCondition>
    implements $DayConditionCopyWith<$Res> {
  _$DayConditionCopyWithImpl(this._value, this._then);

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
abstract class _$$DayConditionImplCopyWith<$Res>
    implements $DayConditionCopyWith<$Res> {
  factory _$$DayConditionImplCopyWith(
          _$DayConditionImpl value, $Res Function(_$DayConditionImpl) then) =
      __$$DayConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String icon});
}

/// @nodoc
class __$$DayConditionImplCopyWithImpl<$Res>
    extends _$DayConditionCopyWithImpl<$Res, _$DayConditionImpl>
    implements _$$DayConditionImplCopyWith<$Res> {
  __$$DayConditionImplCopyWithImpl(
      _$DayConditionImpl _value, $Res Function(_$DayConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
  }) {
    return _then(_$DayConditionImpl(
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
class _$DayConditionImpl with DiagnosticableTreeMixin implements _DayCondition {
  _$DayConditionImpl({required this.text, required this.icon});

  factory _$DayConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayConditionImplFromJson(json);

  @override
  final String text;
  @override
  final String icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DayCondition(text: $text, icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DayCondition'))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayConditionImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayConditionImplCopyWith<_$DayConditionImpl> get copyWith =>
      __$$DayConditionImplCopyWithImpl<_$DayConditionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayConditionImplToJson(
      this,
    );
  }
}

abstract class _DayCondition implements DayCondition {
  factory _DayCondition(
      {required final String text,
      required final String icon}) = _$DayConditionImpl;

  factory _DayCondition.fromJson(Map<String, dynamic> json) =
      _$DayConditionImpl.fromJson;

  @override
  String get text;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$DayConditionImplCopyWith<_$DayConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
