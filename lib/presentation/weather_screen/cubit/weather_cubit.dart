import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_/data/preferences/local_data/local_data.dart';
import 'package:test_/domain/model/city_location/city_location_model.dart';
import 'package:test_/domain/model/forecast/forecast_model.dart';
import 'package:test_/domain/service/main_serivce.dart';
import 'package:test_/presentation/widgets/buildable_cubit.dart';

part 'weather_state.dart';
part 'weather_cubit.freezed.dart';

@injectable
class WeatherCubit extends BuildableCubit<WeatherState, WeatherBuuildable> {
  final MainService _service;
  WeatherCubit(this._service) : super(const WeatherBuuildable()) {
  
   Timer.periodic(const Duration(seconds: 4),(timer){
    fetch(buildable.selectedCity ?? cities.first);
   }); 
  }
 Timer? _debounce;
  fetch(CityLocation city) async {
    build((buildable) => buildable.copyWith(loading: true));
    try {
      ForecastModel data =
          await _service.fetchWeather(city.latitude!, city.longitude!);
      build(
        (buildable) => buildable.copyWith(
            loading: false,
            success: true,
            failed: false,
            data: data,
            selectedCity: city),
      );
    } catch (e) {
     
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: false,
          failed: true,
          error: e.toString(),
        ),
      );
    }
  }
  dispose() {
    _debounce?.cancel();
  }
}
