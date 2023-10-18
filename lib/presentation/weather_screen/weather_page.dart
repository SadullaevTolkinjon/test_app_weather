import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_/di/injection.dart';
import 'package:test_/presentation/weather_screen/cubit/weather_cubit.dart';
import 'package:test_/presentation/weather_screen/weather_view.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<WeatherCubit>(),
      child: const WeatherView(),
    );
  }
}

