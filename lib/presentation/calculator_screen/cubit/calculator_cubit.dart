import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_/presentation/widgets/buildable_cubit.dart';

part 'calculator_state.dart';
part 'calculator_cubit.freezed.dart';

@injectable
class CalculatorCubit
    extends BuildableCubit<CalculatorState, CalculatorBuildable> {
  CalculatorCubit() : super(const CalculatorBuildable());

  buttonPressed(String buttonText) {
    String _output = buildable.output;
    double _num1 = buildable.num1;
    double _num2 = buildable.num2;
    String _operator = buildable.operatoR;
    if (buttonText == "C") {
      _output = "";
      _num1 = 0;
      _num2 = 0;
      _operator = "";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "*" ||
        buttonText == "/") {
      _num1 = double.parse(_output);
      _operator = buttonText;
      _output = "";
    } else if (buttonText == "=") {
      _num2 = double.parse(_output);
      if (_operator == "+") {
        _output = (_num1 + _num2).toString();
      } else if (_operator == "-") {
        _output = (_num1 - _num2).toString();
      } else if (_operator == "*") {
        _output = (_num1 * _num2).toString();
      } else if (_operator == "/") {
        _output = (_num1 / _num2).toString();
      }
      _num1 = 0;
      _num2 = 0;
      _operator = "";
    } else {
      _output += buttonText;
    }

    build(
      (buildable) => buildable.copyWith(
        operatoR: _operator,
        num1: _num1,
        num2: _num2,
        output: _output,
      ),
    );
  }
}
