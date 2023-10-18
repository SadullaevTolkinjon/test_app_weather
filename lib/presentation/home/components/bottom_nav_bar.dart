import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_/presentation/home/cubit/home_cubit.dart';

import '../../widgets/buildable.dart';

builtBottomBar() {
  return Buildable<HomeCubit, HomeState, HomeBuildableState>(
    properties: (buildable) => [buildable.currentIndex],
    builder: (context, state) {
      return BottomNavigationBar(
        currentIndex: state.currentIndex,
        onTap: (value) {
          BlocProvider.of<HomeCubit>(context, listen: false).changeTabs(value);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate), label: "Calculator"),
          BottomNavigationBarItem(icon: Icon(Icons.snowing), label: "Weather")
        ],
      );
    },
  );
}
