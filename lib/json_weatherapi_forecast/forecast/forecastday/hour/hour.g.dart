// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HourImpl _$$HourImplFromJson(Map<String, dynamic> json) => _$HourImpl(
      timeEpoch: json['time_epoch'] as int,
      tempC: (json['temp_c'] as num).toDouble(),
      chanceOfRain: (json['chance_of_rain'] as num).toDouble(),
      chanceOfSnow: (json['chance_of_snow'] as num).toDouble(),
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
      uv: (json['uv'] as num).toDouble(),
    );

Map<String, dynamic> _$$HourImplToJson(_$HourImpl instance) =>
    <String, dynamic>{
      'time_epoch': instance.timeEpoch,
      'temp_c': instance.tempC,
      'chance_of_rain': instance.chanceOfRain,
      'chance_of_snow': instance.chanceOfSnow,
      'condition': instance.condition,
      'uv': instance.uv,
    };
