import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'astro.freezed.dart';
part 'astro.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
)
abstract class Astro with _$Astro {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    createToJson: true,
  )
  factory Astro({
    required String sunrise,
    required String sunset,
  }) = _Astro;

  factory Astro.fromJson(Map<String, dynamic> json) => _$AstroFromJson(json);
}