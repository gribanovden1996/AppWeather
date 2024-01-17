// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayImpl _$$DayImplFromJson(Map<String, dynamic> json) => _$DayImpl(
      maxtempC: (json['maxtemp_c'] as num).toDouble(),
      mintempC: (json['mintemp_c'] as num).toDouble(),
      avgtempC: (json['avgtemp_c'] as num).toDouble(),
      dailyChanceOfRain: (json['daily_chance_of_rain'] as num).toDouble(),
      dailyChanceOfSnow: (json['daily_chance_of_snow'] as num).toDouble(),
    );

Map<String, dynamic> _$$DayImplToJson(_$DayImpl instance) => <String, dynamic>{
      'maxtemp_c': instance.maxtempC,
      'mintemp_c': instance.mintempC,
      'avgtemp_c': instance.avgtempC,
      'daily_chance_of_rain': instance.dailyChanceOfRain,
      'daily_chance_of_snow': instance.dailyChanceOfSnow,
    };
