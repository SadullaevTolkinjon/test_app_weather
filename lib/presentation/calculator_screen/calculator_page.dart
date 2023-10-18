import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_/di/injection.dart';
import 'package:test_/presentation/calculator_screen/calculator_view.dart';
import 'package:test_/presentation/calculator_screen/cubit/calculator_cubit.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<CalculatorCubit>(),
      child: const CalculatorScreen(),
    );
  }
}
