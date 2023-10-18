// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastModelImpl _$$ForecastModelImplFromJson(Map<String, dynamic> json) =>
    _$ForecastModelImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      generationtime_ms: (json['generationtime_ms'] as num?)?.toDouble(),
      utcOffset_seconds: json['utcOffset_seconds'] as int?,
      timezone: json['timezone'] as String?,
      timezone_abbreviation: json['timezone_abbreviation'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      current_units: json['current_units'] == null
          ? null
          : CurrentUnits.fromJson(
              json['current_units'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : Current.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForecastModelImplToJson(_$ForecastModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationtime_ms': instance.generationtime_ms,
      'utcOffset_seconds': instance.utcOffset_seconds,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezone_abbreviation,
      'elevation': instance.elevation,
      'current_units': instance.current_units,
      'current': instance.current,
    };

_$CurrentImpl _$$CurrentImplFromJson(Map<String, dynamic> json) =>
    _$CurrentImpl(
      time: json['time'] as String?,
      interval: json['interval'] as int?,
      temperature_2m: (json['temperature_2m'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CurrentImplToJson(_$CurrentImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
      'temperature_2m': instance.temperature_2m,
    };

_$CurrentUnitsImpl _$$CurrentUnitsImplFromJson(Map<String, dynamic> json) =>
    _$CurrentUnitsImpl(
      time: json['time'] as String?,
      interval: json['interval'] as String?,
      temperature_2m: json['temperature_2m'] as String?,
    );

Map<String, dynamic> _$$CurrentUnitsImplToJson(_$CurrentUnitsImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
      'temperature_2m': instance.temperature_2m,
    };
