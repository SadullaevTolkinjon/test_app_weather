

import 'package:freezed_annotation/freezed_annotation.dart';
part 'forecast_model.freezed.dart';
part 'forecast_model.g.dart';

@freezed
class ForecastModel with _$ForecastModel {
  const factory ForecastModel({
    double? latitude,
    double? longitude,
    double? generationtime_ms,
    int? utcOffset_seconds,
    String? timezone,
    String? timezone_abbreviation,
    double? elevation,
    CurrentUnits? current_units,
    Current? current,
  }) = _ForecastModel;

  factory ForecastModel.fromJson(Map<String, Object?> json) =>
      _$ForecastModelFromJson(json);
}
@freezed
class Current with _$Current {
  const factory Current({
    String? time,
    int? interval,
    double? temperature_2m,
  }) = _Current;

  factory Current.fromJson(Map<String, Object?> json) =>
      _$CurrentFromJson(json);
}
@freezed
class CurrentUnits with _$CurrentUnits {
  const factory CurrentUnits({
    String? time,
    String? interval,
    String? temperature_2m,
  }) = _CurrentUnits;

  factory CurrentUnits.fromJson(Map<String, Object?> json) =>
      _$CurrentUnitsFromJson(json);
}
