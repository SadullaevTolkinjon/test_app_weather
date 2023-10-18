import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_/data/preferences/local_data/local_data.dart';
import 'package:test_/presentation/weather_screen/components/pop_up_menu_content.dart';
import 'package:test_/presentation/weather_screen/cubit/weather_cubit.dart';
import 'package:test_/presentation/widgets/buildable.dart';
import 'package:test_/presentation/widgets/custom_error_widget.dart';
import 'package:test_/presentation/widgets/my_padding.dart';
import 'package:test_/utils/app_size/app_size_const.dart';

class WeatherView extends StatefulWidget {
  const WeatherView({super.key});

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<WeatherCubit, WeatherState>(
        listener: (context, state) {},
        child: Buildable<WeatherCubit, WeatherState, WeatherBuuildable>(
          properties: (buildable) => [
            buildable.loading,
            buildable.success,
            buildable.failed,
            buildable.error,
            buildable.data,
            buildable.selectedCity,
          ],
          builder: (context, state) {
            if (state.failed) {
              return CustomErrorWidget(
                ontap: () {
                  context
                      .read<WeatherCubit>()
                      .fetch(state.selectedCity ?? cities.first);
                },
              );
            }
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  state.loading
                      ? const Text("Loading.......")
                      : const SizedBox(),
                  MyPadding(
                    hieght: AppSizes.getH(context, 0.022),
                  ),
                  Text(
                    state.selectedCity != null
                        ? state.selectedCity!.city!
                        : cities.first.city!,
                    style: TextStyle(
                      fontSize: AppSizes.getH(context, 0.02),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  MyPadding(
                    hieght: AppSizes.getH(context, 0.022),
                  ),
                  state.data != null
                      ? Text(
                          "${state.data!.current!.temperature_2m.toString()} ${state.data!.current_units!.temperature_2m.toString()}",
                          style: TextStyle(
                            fontSize: AppSizes.getH(context, 0.02),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      : const Text("Loading......."),
                  MyPadding(
                    hieght: AppSizes.getH(context, 0.04),
                  ),
                  PopupMenuButton(
                    child: const PopupMenuContent(),
                    itemBuilder: (context) => [
                      ...List.generate(
                        cities.length,
                        (index) => PopupMenuItem(
                          onTap: () async {
                            context.read<WeatherCubit>().stopTimer();
                            await context.read<WeatherCubit>().fetch(
                                  cities[index],
                                );
                          },
                          child: Text(cities[index].city.toString()),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    context.read<WeatherCubit>().dispose();
    super.dispose();
  }
}
