// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentImpl _$$CurrentImplFromJson(Map<String, dynamic> json) =>
    _$CurrentImpl(
      tempC: (json['temp_c'] as num).toDouble(),
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
      windKph: (json['wind_kph'] as num).toDouble(),
      pressureMb: (json['pressure_mb'] as num).toDouble(),
      pressureIn: (json['pressure_in'] as num).toDouble(),
      feelslikeC: (json['feelslike_c'] as num).toDouble(),
    );

Map<String, dynamic> _$$CurrentImplToJson(_$CurrentImpl instance) =>
    <String, dynamic>{
      'temp_c': instance.tempC,
      'condition': instance.condition,
      'wind_kph': instance.windKph,
      'pressure_mb': instance.pressureMb,
      'pressure_in': instance.pressureIn,
      'feelslike_c': instance.feelslikeC,
    };
