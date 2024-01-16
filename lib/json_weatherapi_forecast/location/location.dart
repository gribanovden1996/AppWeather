import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'location.freezed.dart';
part 'location.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
)
abstract class Location with _$Location {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    createToJson: true,
  )
  factory Location({
    required String region,
    required String country,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}