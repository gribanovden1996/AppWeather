// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayImpl _$$DayImplFromJson(Map<String, dynamic> json) => _$DayImpl(
      maxtempC: (json['maxtemp_c'] as num).toDouble(),
      mintempC: (json['mintemp_c'] as num).toDouble(),
      avgtempC: (json['avgtemp_c'] as num).toDouble(),
    );

Map<String, dynamic> _$$DayImplToJson(_$DayImpl instance) => <String, dynamic>{
      'maxtemp_c': instance.maxtempC,
      'mintemp_c': instance.mintempC,
      'avgtemp_c': instance.avgtempC,
    };
