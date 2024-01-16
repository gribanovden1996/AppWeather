// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'json_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JsonApi _$JsonApiFromJson(Map<String, dynamic> json) {
  return _JsonApi.fromJson(json);
}

/// @nodoc
mixin _$JsonApi {
  Current get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonApiCopyWith<JsonApi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonApiCopyWith<$Res> {
  factory $JsonApiCopyWith(JsonApi value, $Res Function(JsonApi) then) =
      _$JsonApiCopyWithImpl<$Res, JsonApi>;
  @useResult
  $Res call({Current current});

  $CurrentCopyWith<$Res> get current;
}

/// @nodoc
class _$JsonApiCopyWithImpl<$Res, $Val extends JsonApi>
    implements $JsonApiCopyWith<$Res> {
  _$JsonApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res> get current {
    return $CurrentCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JsonApiImplCopyWith<$Res> implements $JsonApiCopyWith<$Res> {
  factory _$$JsonApiImplCopyWith(
          _$JsonApiImpl value, $Res Function(_$JsonApiImpl) then) =
      __$$JsonApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Current current});

  @override
  $CurrentCopyWith<$Res> get current;
}

/// @nodoc
class __$$JsonApiImplCopyWithImpl<$Res>
    extends _$JsonApiCopyWithImpl<$Res, _$JsonApiImpl>
    implements _$$JsonApiImplCopyWith<$Res> {
  __$$JsonApiImplCopyWithImpl(
      _$JsonApiImpl _value, $Res Function(_$JsonApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_$JsonApiImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: true)
class _$JsonApiImpl with DiagnosticableTreeMixin implements _JsonApi {
  _$JsonApiImpl({required this.current});

  factory _$JsonApiImpl.fromJson(Map<String, dynamic> json) =>
      _$$JsonApiImplFromJson(json);

  @override
  final Current current;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonApi(current: $current)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonApi'))
      ..add(DiagnosticsProperty('current', current));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonApiImpl &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonApiImplCopyWith<_$JsonApiImpl> get copyWith =>
      __$$JsonApiImplCopyWithImpl<_$JsonApiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JsonApiImplToJson(
      this,
    );
  }
}

abstract class _JsonApi implements JsonApi {
  factory _JsonApi({required final Current current}) = _$JsonApiImpl;

  factory _JsonApi.fromJson(Map<String, dynamic> json) = _$JsonApiImpl.fromJson;

  @override
  Current get current;
  @override
  @JsonKey(ignore: true)
  _$$JsonApiImplCopyWith<_$JsonApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
