part of 'weather_cubit.dart';

abstract class WeatherState {}

@freezed
class WeatherBuuildable extends WeatherState with _$WeatherBuuildable {
  const factory WeatherBuuildable({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
    ForecastModel? data,
    CityLocation? selectedCity,
  }) = _WeatherBuuildable;
}
