// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculator_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalculatorBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  String get output => throw _privateConstructorUsedError;
  double get num1 => throw _privateConstructorUsedError;
  double get num2 => throw _privateConstructorUsedError;
  String get operatoR => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalculatorBuildableCopyWith<CalculatorBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorBuildableCopyWith<$Res> {
  factory $CalculatorBuildableCopyWith(
          CalculatorBuildable value, $Res Function(CalculatorBuildable) then) =
      _$CalculatorBuildableCopyWithImpl<$Res, CalculatorBuildable>;
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      dynamic error,
      String output,
      double num1,
      double num2,
      String operatoR});
}

/// @nodoc
class _$CalculatorBuildableCopyWithImpl<$Res, $Val extends CalculatorBuildable>
    implements $CalculatorBuildableCopyWith<$Res> {
  _$CalculatorBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
    Object? output = null,
    Object? num1 = null,
    Object? num2 = null,
    Object? operatoR = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
      num1: null == num1
          ? _value.num1
          : num1 // ignore: cast_nullable_to_non_nullable
              as double,
      num2: null == num2
          ? _value.num2
          : num2 // ignore: cast_nullable_to_non_nullable
              as double,
      operatoR: null == operatoR
          ? _value.operatoR
          : operatoR // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatorBuildableImplCopyWith<$Res>
    implements $CalculatorBuildableCopyWith<$Res> {
  factory _$$CalculatorBuildableImplCopyWith(_$CalculatorBuildableImpl value,
          $Res Function(_$CalculatorBuildableImpl) then) =
      __$$CalculatorBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      dynamic error,
      String output,
      double num1,
      double num2,
      String operatoR});
}

/// @nodoc
class __$$CalculatorBuildableImplCopyWithImpl<$Res>
    extends _$CalculatorBuildableCopyWithImpl<$Res, _$CalculatorBuildableImpl>
    implements _$$CalculatorBuildableImplCopyWith<$Res> {
  __$$CalculatorBuildableImplCopyWithImpl(_$CalculatorBuildableImpl _value,
      $Res Function(_$CalculatorBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
    Object? output = null,
    Object? num1 = null,
    Object? num2 = null,
    Object? operatoR = null,
  }) {
    return _then(_$CalculatorBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
      num1: null == num1
          ? _value.num1
          : num1 // ignore: cast_nullable_to_non_nullable
              as double,
      num2: null == num2
          ? _value.num2
          : num2 // ignore: cast_nullable_to_non_nullable
              as double,
      operatoR: null == operatoR
          ? _value.operatoR
          : operatoR // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CalculatorBuildableImpl implements _CalculatorBuildable {
  const _$CalculatorBuildableImpl(
      {this.loading = false,
      this.success = false,
      this.failed = false,
      this.error,
      this.output = "",
      this.num1 = 0,
      this.num2 = 0,
      this.operatoR = ""});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final bool failed;
  @override
  final dynamic error;
  @override
  @JsonKey()
  final String output;
  @override
  @JsonKey()
  final double num1;
  @override
  @JsonKey()
  final double num2;
  @override
  @JsonKey()
  final String operatoR;

  @override
  String toString() {
    return 'CalculatorBuildable(loading: $loading, success: $success, failed: $failed, error: $error, output: $output, num1: $num1, num2: $num2, operatoR: $operatoR)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.output, output) || other.output == output) &&
            (identical(other.num1, num1) || other.num1 == num1) &&
            (identical(other.num2, num2) || other.num2 == num2) &&
            (identical(other.operatoR, operatoR) ||
                other.operatoR == operatoR));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, success, failed,
      const DeepCollectionEquality().hash(error), output, num1, num2, operatoR);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorBuildableImplCopyWith<_$CalculatorBuildableImpl> get copyWith =>
      __$$CalculatorBuildableImplCopyWithImpl<_$CalculatorBuildableImpl>(
          this, _$identity);
}

abstract class _CalculatorBuildable implements CalculatorBuildable {
  const factory _CalculatorBuildable(
      {final bool loading,
      final bool success,
      final bool failed,
      final dynamic error,
      final String output,
      final double num1,
      final double num2,
      final String operatoR}) = _$CalculatorBuildableImpl;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  dynamic get error;
  @override
  String get output;
  @override
  double get num1;
  @override
  double get num2;
  @override
  String get operatoR;
  @override
  @JsonKey(ignore: true)
  _$$CalculatorBuildableImplCopyWith<_$CalculatorBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
