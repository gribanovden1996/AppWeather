// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return _Current.fromJson(json);
}

/// @nodoc
mixin _$Current {
  double get tempC => throw _privateConstructorUsedError;
  Condition get condition => throw _privateConstructorUsedError;
  double get windKph => throw _privateConstructorUsedError;
  double get pressureMb => throw _privateConstructorUsedError;
  double get pressureIn => throw _privateConstructorUsedError;
  double get feelslikeC => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentCopyWith<Current> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCopyWith<$Res> {
  factory $CurrentCopyWith(Current value, $Res Function(Current) then) =
      _$CurrentCopyWithImpl<$Res, Current>;
  @useResult
  $Res call(
      {double tempC,
      Condition condition,
      double windKph,
      double pressureMb,
      double pressureIn,
      double feelslikeC});

  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$CurrentCopyWithImpl<$Res, $Val extends Current>
    implements $CurrentCopyWith<$Res> {
  _$CurrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempC = null,
    Object? condition = null,
    Object? windKph = null,
    Object? pressureMb = null,
    Object? pressureIn = null,
    Object? feelslikeC = null,
  }) {
    return _then(_value.copyWith(
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      pressureMb: null == pressureMb
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as double,
      pressureIn: null == pressureIn
          ? _value.pressureIn
          : pressureIn // ignore: cast_nullable_to_non_nullable
              as double,
      feelslikeC: null == feelslikeC
          ? _value.feelslikeC
          : feelslikeC // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionCopyWith<$Res> get condition {
    return $ConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentImplCopyWith<$Res> implements $CurrentCopyWith<$Res> {
  factory _$$CurrentImplCopyWith(
          _$CurrentImpl value, $Res Function(_$CurrentImpl) then) =
      __$$CurrentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double tempC,
      Condition condition,
      double windKph,
      double pressureMb,
      double pressureIn,
      double feelslikeC});

  @override
  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$CurrentImplCopyWithImpl<$Res>
    extends _$CurrentCopyWithImpl<$Res, _$CurrentImpl>
    implements _$$CurrentImplCopyWith<$Res> {
  __$$CurrentImplCopyWithImpl(
      _$CurrentImpl _value, $Res Function(_$CurrentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempC = null,
    Object? condition = null,
    Object? windKph = null,
    Object? pressureMb = null,
    Object? pressureIn = null,
    Object? feelslikeC = null,
  }) {
    return _then(_$CurrentImpl(
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      pressureMb: null == pressureMb
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as double,
      pressureIn: null == pressureIn
          ? _value.pressureIn
          : pressureIn // ignore: cast_nullable_to_non_nullable
              as double,
      feelslikeC: null == feelslikeC
          ? _value.feelslikeC
          : feelslikeC // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: true)
class _$CurrentImpl with DiagnosticableTreeMixin implements _Current {
  _$CurrentImpl(
      {required this.tempC,
      required this.condition,
      required this.windKph,
      required this.pressureMb,
      required this.pressureIn,
      required this.feelslikeC});

  factory _$CurrentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentImplFromJson(json);

  @override
  final double tempC;
  @override
  final Condition condition;
  @override
  final double windKph;
  @override
  final double pressureMb;
  @override
  final double pressureIn;
  @override
  final double feelslikeC;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Current(tempC: $tempC, condition: $condition, windKph: $windKph, pressureMb: $pressureMb, pressureIn: $pressureIn, feelslikeC: $feelslikeC)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Current'))
      ..add(DiagnosticsProperty('tempC', tempC))
      ..add(DiagnosticsProperty('condition', condition))
      ..add(DiagnosticsProperty('windKph', windKph))
      ..add(DiagnosticsProperty('pressureMb', pressureMb))
      ..add(DiagnosticsProperty('pressureIn', pressureIn))
      ..add(DiagnosticsProperty('feelslikeC', feelslikeC));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentImpl &&
            (identical(other.tempC, tempC) || other.tempC == tempC) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.windKph, windKph) || other.windKph == windKph) &&
            (identical(other.pressureMb, pressureMb) ||
                other.pressureMb == pressureMb) &&
            (identical(other.pressureIn, pressureIn) ||
                other.pressureIn == pressureIn) &&
            (identical(other.feelslikeC, feelslikeC) ||
                other.feelslikeC == feelslikeC));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tempC, condition, windKph,
      pressureMb, pressureIn, feelslikeC);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      __$$CurrentImplCopyWithImpl<_$CurrentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentImplToJson(
      this,
    );
  }
}

abstract class _Current implements Current {
  factory _Current(
      {required final double tempC,
      required final Condition condition,
      required final double windKph,
      required final double pressureMb,
      required final double pressureIn,
      required final double feelslikeC}) = _$CurrentImpl;

  factory _Current.fromJson(Map<String, dynamic> json) = _$CurrentImpl.fromJson;

  @override
  double get tempC;
  @override
  Condition get condition;
  @override
  double get windKph;
  @override
  double get pressureMb;
  @override
  double get pressureIn;
  @override
  double get feelslikeC;
  @override
  @JsonKey(ignore: true)
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
