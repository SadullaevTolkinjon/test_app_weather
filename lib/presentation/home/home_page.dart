import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_/presentation/calculator_screen/calculator_page.dart';
import 'package:test_/presentation/home/components/bottom_nav_bar.dart';
import 'package:test_/presentation/home/components/build_home_view.dart';
import 'package:test_/presentation/home/cubit/home_cubit.dart';
import 'package:test_/presentation/home/home_view.dart';
import 'package:test_/presentation/weather_screen/weather_page.dart';
import 'package:test_/presentation/widgets/buildable.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<HomeCubit, HomeState>(
        listener: (context, state) {},
        child: Buildable<HomeCubit, HomeState, HomeBuildableState>(
          properties: (buildable) => [
            buildable.currentIndex,
          ],
          builder: (context, state) {
            return IndexedStack(
              index: state.currentIndex,
              children: const [
                HomeView(),
                CalculatorPage(),
                WeatherPage(),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: builtBottomBar(),
    );
  }
}
