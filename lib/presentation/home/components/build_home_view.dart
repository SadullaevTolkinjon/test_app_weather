import 'package:flutter/material.dart';
import 'package:test_/presentation/calculator_screen/calculator_page.dart';
import 'package:test_/presentation/home/home_view.dart';
import 'package:test_/presentation/weather_screen/weather_page.dart';

buildHomeUi(int index) {
  switch (index) {
    case 0:
      return const HomeView();
    case 1:
      return const CalculatorPage();
    case 2:
      return const WeatherPage();
    default:
      return const SizedBox();
  }
}
