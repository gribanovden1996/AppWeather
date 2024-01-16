// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecastday.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastdayImpl _$$ForecastdayImplFromJson(Map<String, dynamic> json) =>
    _$ForecastdayImpl(
      hour: (json['hour'] as List<dynamic>)
          .map((e) => Hour.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ForecastdayImplToJson(_$ForecastdayImpl instance) =>
    <String, dynamic>{
      'hour': instance.hour,
    };
