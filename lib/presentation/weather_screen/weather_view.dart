
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_/data/preferences/local_data/local_data.dart';
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
                children: buildWidgets(state),
              ),
            );
          },
        ),
      ),
    );
  }

  buildWidgets(WeatherBuuildable state) {
    List<Widget> widgets = [];
    if (state.loading) {
      widgets.add(
        const Text("Loading......."),
      );
    }
    if (state.success) {
      widgets.add(
        Text(
          state.selectedCity!.city ?? "",
          style: TextStyle(
            fontSize: AppSizes.getH(context, 0.02),
            fontWeight: FontWeight.w600,
          ),
        ),
      );
      widgets.add(
        MyPadding(
          hieght: AppSizes.getH(context, 0.022),
        ),
      );
      widgets.add(
        Text(
          "${state.data!.current!.temperature_2m.toString()} ${state.data!.current_units!.temperature_2m.toString()}",
          style: TextStyle(
            fontSize: AppSizes.getH(context, 0.02),
            fontWeight: FontWeight.w600,
          ),
        ),
      );
      widgets.add(MyPadding(
        hieght: AppSizes.getH(context, 0.04),
      ));
      widgets.add(
        PopupMenuButton(
          child: const Text(
            "Select city",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
          itemBuilder: (context) => [
            ...List.generate(
              cities.length,
              (index) => PopupMenuItem(
                onTap: () {
                  context.read<WeatherCubit>().fetch(
                        cities[index],
                      );
                },
                child: Text(cities[index].city.toString()),
              ),
            )
          ],
        ),
      );
    }
    return widgets;
  }
@override
  void dispose() {
  
    super.dispose();
  }

}
