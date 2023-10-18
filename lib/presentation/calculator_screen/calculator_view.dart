import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_/constants/color/color_const.dart';
import 'package:test_/presentation/calculator_screen/components/calculator_output.dart';
import 'package:test_/presentation/calculator_screen/cubit/calculator_cubit.dart';
import 'package:test_/presentation/widgets/buildable.dart';
import 'package:test_/presentation/widgets/my_padding.dart';
import 'package:test_/utils/app_size/app_size_const.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: BlocListener<CalculatorCubit, CalculatorState>(
        listener: (context, state) {},
        child: Buildable<CalculatorCubit, CalculatorState, CalculatorBuildable>(
          properties: (buildable) => [
            buildable.num1,
            buildable.num2,
            buildable.operatoR,
            buildable.output,
          ],
          builder: (context, state) {
            return Column(
              children: [
                CalculatorOutput(
                  output: state.output,
                ),
                const Expanded(
                  child: Divider(),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        buildButton("7", context),
                        buildButton("8", context),
                        buildButton("9", context),
                        buildButton("/", context)
                      ],
                    ),
                    _buildPadding(AppSizes.getH(context, 0.01)),
                    Row(
                      children: [
                        buildButton("4", context),
                        buildButton("5", context),
                        buildButton("6", context),
                        buildButton("*", context)
                      ],
                    ),
                    _buildPadding(AppSizes.getH(context, 0.01)),
                    Row(
                      children: [
                        buildButton("1", context),
                        buildButton("2", context),
                        buildButton("3", context),
                        buildButton("-", context)
                      ],
                    ),
                    _buildPadding(AppSizes.getH(context, 0.01)),
                    Row(
                      children: [
                        buildButton("C", context),
                        buildButton("0", context),
                        buildButton("=", context),
                        buildButton("+", context)
                      ],
                    ),
                    _buildPadding(AppSizes.getH(context, 0.01)),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text("Calculator Screen"),
    );
  }

  _buildPadding(double size) {
    return MyPadding(
      hieght: size,
    );
  }

  Widget buildButton(String buttonText, BuildContext context) {
    return Expanded(
      child: FloatingActionButton(
        backgroundColor: ColorConstants.darkBlue,
        onPressed: () =>
            context.read<CalculatorCubit>().buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: AppSizes.getH(context, 0.02)),
        ),
      ),
    );
  }
}
