import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather1/model/current.dart';

part 'json_api.freezed.dart';
part 'json_api.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
)
abstract class JsonApi with _$JsonApi {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    createToJson: true,
  )
  factory JsonApi({
    required Current current,
  }) = _JsonApi;

  factory JsonApi.fromJson(Map<String, dynamic> json) => _$JsonApiFromJson(json);
}