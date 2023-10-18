// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherBuuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  ForecastModel? get data => throw _privateConstructorUsedError;
  CityLocation? get selectedCity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherBuuildableCopyWith<WeatherBuuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherBuuildableCopyWith<$Res> {
  factory $WeatherBuuildableCopyWith(
          WeatherBuuildable value, $Res Function(WeatherBuuildable) then) =
      _$WeatherBuuildableCopyWithImpl<$Res, WeatherBuuildable>;
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      dynamic error,
      ForecastModel? data,
      CityLocation? selectedCity});

  $ForecastModelCopyWith<$Res>? get data;
  $CityLocationCopyWith<$Res>? get selectedCity;
}

/// @nodoc
class _$WeatherBuuildableCopyWithImpl<$Res, $Val extends WeatherBuuildable>
    implements $WeatherBuuildableCopyWith<$Res> {
  _$WeatherBuuildableCopyWithImpl(this._value, this._then);

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
    Object? data = freezed,
    Object? selectedCity = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ForecastModel?,
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as CityLocation?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ForecastModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityLocationCopyWith<$Res>? get selectedCity {
    if (_value.selectedCity == null) {
      return null;
    }

    return $CityLocationCopyWith<$Res>(_value.selectedCity!, (value) {
      return _then(_value.copyWith(selectedCity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherBuuildableImplCopyWith<$Res>
    implements $WeatherBuuildableCopyWith<$Res> {
  factory _$$WeatherBuuildableImplCopyWith(_$WeatherBuuildableImpl value,
          $Res Function(_$WeatherBuuildableImpl) then) =
      __$$WeatherBuuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      dynamic error,
      ForecastModel? data,
      CityLocation? selectedCity});

  @override
  $ForecastModelCopyWith<$Res>? get data;
  @override
  $CityLocationCopyWith<$Res>? get selectedCity;
}

/// @nodoc
class __$$WeatherBuuildableImplCopyWithImpl<$Res>
    extends _$WeatherBuuildableCopyWithImpl<$Res, _$WeatherBuuildableImpl>
    implements _$$WeatherBuuildableImplCopyWith<$Res> {
  __$$WeatherBuuildableImplCopyWithImpl(_$WeatherBuuildableImpl _value,
      $Res Function(_$WeatherBuuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
    Object? data = freezed,
    Object? selectedCity = freezed,
  }) {
    return _then(_$WeatherBuuildableImpl(
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ForecastModel?,
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as CityLocation?,
    ));
  }
}

/// @nodoc

class _$WeatherBuuildableImpl implements _WeatherBuuildable {
  const _$WeatherBuuildableImpl(
      {this.loading = false,
      this.success = false,
      this.failed = false,
      this.error,
      this.data,
      this.selectedCity});

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
  final ForecastModel? data;
  @override
  final CityLocation? selectedCity;

  @override
  String toString() {
    return 'WeatherBuuildable(loading: $loading, success: $success, failed: $failed, error: $error, data: $data, selectedCity: $selectedCity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherBuuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.selectedCity, selectedCity) ||
                other.selectedCity == selectedCity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, success, failed,
      const DeepCollectionEquality().hash(error), data, selectedCity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherBuuildableImplCopyWith<_$WeatherBuuildableImpl> get copyWith =>
      __$$WeatherBuuildableImplCopyWithImpl<_$WeatherBuuildableImpl>(
          this, _$identity);
}

abstract class _WeatherBuuildable implements WeatherBuuildable {
  const factory _WeatherBuuildable(
      {final bool loading,
      final bool success,
      final bool failed,
      final dynamic error,
      final ForecastModel? data,
      final CityLocation? selectedCity}) = _$WeatherBuuildableImpl;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  dynamic get error;
  @override
  ForecastModel? get data;
  @override
  CityLocation? get selectedCity;
  @override
  @JsonKey(ignore: true)
  _$$WeatherBuuildableImplCopyWith<_$WeatherBuuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
