// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JsonForecastImpl _$$JsonForecastImplFromJson(Map<String, dynamic> json) =>
    _$JsonForecastImpl(
      forecast: Forecast.fromJson(json['forecast'] as Map<String, dynamic>),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      current: Current.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$JsonForecastImplToJson(_$JsonForecastImpl instance) =>
    <String, dynamic>{
      'forecast': instance.forecast,
      'location': instance.location,
      'current': instance.current,
    };
