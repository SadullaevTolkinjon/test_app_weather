part of 'calculator_cubit.dart';

abstract class CalculatorState {}

@freezed
class CalculatorBuildable extends CalculatorState with _$CalculatorBuildable {
  const factory CalculatorBuildable({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
    @Default("") String output,
    @Default(0) double num1,
    @Default(0) double num2,
     @Default("")  String operatoR,
  }) = _CalculatorBuildable;
}
