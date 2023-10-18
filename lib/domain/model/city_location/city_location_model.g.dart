// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityLocationImpl _$$CityLocationImplFromJson(Map<String, dynamic> json) =>
    _$CityLocationImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      city: json['city'] as String?,
    );

Map<String, dynamic> _$$CityLocationImplToJson(_$CityLocationImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'city': instance.city,
    };
