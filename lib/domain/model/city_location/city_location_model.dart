import 'package:freezed_annotation/freezed_annotation.dart';
part 'city_location_model.freezed.dart';
part 'city_location_model.g.dart';

@freezed
class CityLocation with _$CityLocation {
  const factory CityLocation({
  required  double? latitude,
  required  double? longitude,
  required  String? city,
  }) = _CityLocation;

  factory CityLocation.fromJson(Map<String, Object?> json) =>
      _$CityLocationFromJson(json);
}
