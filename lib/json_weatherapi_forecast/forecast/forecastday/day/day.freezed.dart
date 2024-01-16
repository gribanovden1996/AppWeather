// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Day _$DayFromJson(Map<String, dynamic> json) {
  return _Day.fromJson(json);
}

/// @nodoc
mixin _$Day {
  double get maxtempC => throw _privateConstructorUsedError;
  double get mintempC => throw _privateConstructorUsedError;
  double get avgtempC => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayCopyWith<Day> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayCopyWith<$Res> {
  factory $DayCopyWith(Day value, $Res Function(Day) then) =
      _$DayCopyWithImpl<$Res, Day>;
  @useResult
  $Res call({double maxtempC, double mintempC, double avgtempC});
}

/// @nodoc
class _$DayCopyWithImpl<$Res, $Val extends Day> implements $DayCopyWith<$Res> {
  _$DayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxtempC = null,
    Object? mintempC = null,
    Object? avgtempC = null,
  }) {
    return _then(_value.copyWith(
      maxtempC: null == maxtempC
          ? _value.maxtempC
          : maxtempC // ignore: cast_nullable_to_non_nullable
              as double,
      mintempC: null == mintempC
          ? _value.mintempC
          : mintempC // ignore: cast_nullable_to_non_nullable
              as double,
      avgtempC: null == avgtempC
          ? _value.avgtempC
          : avgtempC // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayImplCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$$DayImplCopyWith(_$DayImpl value, $Res Function(_$DayImpl) then) =
      __$$DayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double maxtempC, double mintempC, double avgtempC});
}

/// @nodoc
class __$$DayImplCopyWithImpl<$Res> extends _$DayCopyWithImpl<$Res, _$DayImpl>
    implements _$$DayImplCopyWith<$Res> {
  __$$DayImplCopyWithImpl(_$DayImpl _value, $Res Function(_$DayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxtempC = null,
    Object? mintempC = null,
    Object? avgtempC = null,
  }) {
    return _then(_$DayImpl(
      maxtempC: null == maxtempC
          ? _value.maxtempC
          : maxtempC // ignore: cast_nullable_to_non_nullable
              as double,
      mintempC: null == mintempC
          ? _value.mintempC
          : mintempC // ignore: cast_nullable_to_non_nullable
              as double,
      avgtempC: null == avgtempC
          ? _value.avgtempC
          : avgtempC // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: true)
class _$DayImpl with DiagnosticableTreeMixin implements _Day {
  _$DayImpl(
      {required this.maxtempC, required this.mintempC, required this.avgtempC});

  factory _$DayImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayImplFromJson(json);

  @override
  final double maxtempC;
  @override
  final double mintempC;
  @override
  final double avgtempC;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Day(maxtempC: $maxtempC, mintempC: $mintempC, avgtempC: $avgtempC)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Day'))
      ..add(DiagnosticsProperty('maxtempC', maxtempC))
      ..add(DiagnosticsProperty('mintempC', mintempC))
      ..add(DiagnosticsProperty('avgtempC', avgtempC));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayImpl &&
            (identical(other.maxtempC, maxtempC) ||
                other.maxtempC == maxtempC) &&
            (identical(other.mintempC, mintempC) ||
                other.mintempC == mintempC) &&
            (identical(other.avgtempC, avgtempC) ||
                other.avgtempC == avgtempC));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maxtempC, mintempC, avgtempC);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      __$$DayImplCopyWithImpl<_$DayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayImplToJson(
      this,
    );
  }
}

abstract class _Day implements Day {
  factory _Day(
      {required final double maxtempC,
      required final double mintempC,
      required final double avgtempC}) = _$DayImpl;

  factory _Day.fromJson(Map<String, dynamic> json) = _$DayImpl.fromJson;

  @override
  double get maxtempC;
  @override
  double get mintempC;
  @override
  double get avgtempC;
  @override
  @JsonKey(ignore: true)
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
