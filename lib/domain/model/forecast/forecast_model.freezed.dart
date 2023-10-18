// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastModel _$ForecastModelFromJson(Map<String, dynamic> json) {
  return _ForecastModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastModel {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get generationtime_ms => throw _privateConstructorUsedError;
  int? get utcOffset_seconds => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  String? get timezone_abbreviation => throw _privateConstructorUsedError;
  double? get elevation => throw _privateConstructorUsedError;
  CurrentUnits? get current_units => throw _privateConstructorUsedError;
  Current? get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastModelCopyWith<ForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastModelCopyWith<$Res> {
  factory $ForecastModelCopyWith(
          ForecastModel value, $Res Function(ForecastModel) then) =
      _$ForecastModelCopyWithImpl<$Res, ForecastModel>;
  @useResult
  $Res call(
      {double? latitude,
      double? longitude,
      double? generationtime_ms,
      int? utcOffset_seconds,
      String? timezone,
      String? timezone_abbreviation,
      double? elevation,
      CurrentUnits? current_units,
      Current? current});

  $CurrentUnitsCopyWith<$Res>? get current_units;
  $CurrentCopyWith<$Res>? get current;
}

/// @nodoc
class _$ForecastModelCopyWithImpl<$Res, $Val extends ForecastModel>
    implements $ForecastModelCopyWith<$Res> {
  _$ForecastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? generationtime_ms = freezed,
    Object? utcOffset_seconds = freezed,
    Object? timezone = freezed,
    Object? timezone_abbreviation = freezed,
    Object? elevation = freezed,
    Object? current_units = freezed,
    Object? current = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      generationtime_ms: freezed == generationtime_ms
          ? _value.generationtime_ms
          : generationtime_ms // ignore: cast_nullable_to_non_nullable
              as double?,
      utcOffset_seconds: freezed == utcOffset_seconds
          ? _value.utcOffset_seconds
          : utcOffset_seconds // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone_abbreviation: freezed == timezone_abbreviation
          ? _value.timezone_abbreviation
          : timezone_abbreviation // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      current_units: freezed == current_units
          ? _value.current_units
          : current_units // ignore: cast_nullable_to_non_nullable
              as CurrentUnits?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentUnitsCopyWith<$Res>? get current_units {
    if (_value.current_units == null) {
      return null;
    }

    return $CurrentUnitsCopyWith<$Res>(_value.current_units!, (value) {
      return _then(_value.copyWith(current_units: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastModelImplCopyWith<$Res>
    implements $ForecastModelCopyWith<$Res> {
  factory _$$ForecastModelImplCopyWith(
          _$ForecastModelImpl value, $Res Function(_$ForecastModelImpl) then) =
      __$$ForecastModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? latitude,
      double? longitude,
      double? generationtime_ms,
      int? utcOffset_seconds,
      String? timezone,
      String? timezone_abbreviation,
      double? elevation,
      CurrentUnits? current_units,
      Current? current});

  @override
  $CurrentUnitsCopyWith<$Res>? get current_units;
  @override
  $CurrentCopyWith<$Res>? get current;
}

/// @nodoc
class __$$ForecastModelImplCopyWithImpl<$Res>
    extends _$ForecastModelCopyWithImpl<$Res, _$ForecastModelImpl>
    implements _$$ForecastModelImplCopyWith<$Res> {
  __$$ForecastModelImplCopyWithImpl(
      _$ForecastModelImpl _value, $Res Function(_$ForecastModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? generationtime_ms = freezed,
    Object? utcOffset_seconds = freezed,
    Object? timezone = freezed,
    Object? timezone_abbreviation = freezed,
    Object? elevation = freezed,
    Object? current_units = freezed,
    Object? current = freezed,
  }) {
    return _then(_$ForecastModelImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      generationtime_ms: freezed == generationtime_ms
          ? _value.generationtime_ms
          : generationtime_ms // ignore: cast_nullable_to_non_nullable
              as double?,
      utcOffset_seconds: freezed == utcOffset_seconds
          ? _value.utcOffset_seconds
          : utcOffset_seconds // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone_abbreviation: freezed == timezone_abbreviation
          ? _value.timezone_abbreviation
          : timezone_abbreviation // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      current_units: freezed == current_units
          ? _value.current_units
          : current_units // ignore: cast_nullable_to_non_nullable
              as CurrentUnits?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastModelImpl implements _ForecastModel {
  const _$ForecastModelImpl(
      {this.latitude,
      this.longitude,
      this.generationtime_ms,
      this.utcOffset_seconds,
      this.timezone,
      this.timezone_abbreviation,
      this.elevation,
      this.current_units,
      this.current});

  factory _$ForecastModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastModelImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final double? generationtime_ms;
  @override
  final int? utcOffset_seconds;
  @override
  final String? timezone;
  @override
  final String? timezone_abbreviation;
  @override
  final double? elevation;
  @override
  final CurrentUnits? current_units;
  @override
  final Current? current;

  @override
  String toString() {
    return 'ForecastModel(latitude: $latitude, longitude: $longitude, generationtime_ms: $generationtime_ms, utcOffset_seconds: $utcOffset_seconds, timezone: $timezone, timezone_abbreviation: $timezone_abbreviation, elevation: $elevation, current_units: $current_units, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.generationtime_ms, generationtime_ms) ||
                other.generationtime_ms == generationtime_ms) &&
            (identical(other.utcOffset_seconds, utcOffset_seconds) ||
                other.utcOffset_seconds == utcOffset_seconds) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezone_abbreviation, timezone_abbreviation) ||
                other.timezone_abbreviation == timezone_abbreviation) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.current_units, current_units) ||
                other.current_units == current_units) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      generationtime_ms,
      utcOffset_seconds,
      timezone,
      timezone_abbreviation,
      elevation,
      current_units,
      current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastModelImplCopyWith<_$ForecastModelImpl> get copyWith =>
      __$$ForecastModelImplCopyWithImpl<_$ForecastModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastModelImplToJson(
      this,
    );
  }
}

abstract class _ForecastModel implements ForecastModel {
  const factory _ForecastModel(
      {final double? latitude,
      final double? longitude,
      final double? generationtime_ms,
      final int? utcOffset_seconds,
      final String? timezone,
      final String? timezone_abbreviation,
      final double? elevation,
      final CurrentUnits? current_units,
      final Current? current}) = _$ForecastModelImpl;

  factory _ForecastModel.fromJson(Map<String, dynamic> json) =
      _$ForecastModelImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  double? get generationtime_ms;
  @override
  int? get utcOffset_seconds;
  @override
  String? get timezone;
  @override
  String? get timezone_abbreviation;
  @override
  double? get elevation;
  @override
  CurrentUnits? get current_units;
  @override
  Current? get current;
  @override
  @JsonKey(ignore: true)
  _$$ForecastModelImplCopyWith<_$ForecastModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return _Current.fromJson(json);
}

/// @nodoc
mixin _$Current {
  String? get time => throw _privateConstructorUsedError;
  int? get interval => throw _privateConstructorUsedError;
  double? get temperature_2m => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentCopyWith<Current> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCopyWith<$Res> {
  factory $CurrentCopyWith(Current value, $Res Function(Current) then) =
      _$CurrentCopyWithImpl<$Res, Current>;
  @useResult
  $Res call({String? time, int? interval, double? temperature_2m});
}

/// @nodoc
class _$CurrentCopyWithImpl<$Res, $Val extends Current>
    implements $CurrentCopyWith<$Res> {
  _$CurrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? interval = freezed,
    Object? temperature_2m = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int?,
      temperature_2m: freezed == temperature_2m
          ? _value.temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentImplCopyWith<$Res> implements $CurrentCopyWith<$Res> {
  factory _$$CurrentImplCopyWith(
          _$CurrentImpl value, $Res Function(_$CurrentImpl) then) =
      __$$CurrentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? time, int? interval, double? temperature_2m});
}

/// @nodoc
class __$$CurrentImplCopyWithImpl<$Res>
    extends _$CurrentCopyWithImpl<$Res, _$CurrentImpl>
    implements _$$CurrentImplCopyWith<$Res> {
  __$$CurrentImplCopyWithImpl(
      _$CurrentImpl _value, $Res Function(_$CurrentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? interval = freezed,
    Object? temperature_2m = freezed,
  }) {
    return _then(_$CurrentImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int?,
      temperature_2m: freezed == temperature_2m
          ? _value.temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentImpl implements _Current {
  const _$CurrentImpl({this.time, this.interval, this.temperature_2m});

  factory _$CurrentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentImplFromJson(json);

  @override
  final String? time;
  @override
  final int? interval;
  @override
  final double? temperature_2m;

  @override
  String toString() {
    return 'Current(time: $time, interval: $interval, temperature_2m: $temperature_2m)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.temperature_2m, temperature_2m) ||
                other.temperature_2m == temperature_2m));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, interval, temperature_2m);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      __$$CurrentImplCopyWithImpl<_$CurrentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentImplToJson(
      this,
    );
  }
}

abstract class _Current implements Current {
  const factory _Current(
      {final String? time,
      final int? interval,
      final double? temperature_2m}) = _$CurrentImpl;

  factory _Current.fromJson(Map<String, dynamic> json) = _$CurrentImpl.fromJson;

  @override
  String? get time;
  @override
  int? get interval;
  @override
  double? get temperature_2m;
  @override
  @JsonKey(ignore: true)
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentUnits _$CurrentUnitsFromJson(Map<String, dynamic> json) {
  return _CurrentUnits.fromJson(json);
}

/// @nodoc
mixin _$CurrentUnits {
  String? get time => throw _privateConstructorUsedError;
  String? get interval => throw _privateConstructorUsedError;
  String? get temperature_2m => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentUnitsCopyWith<CurrentUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUnitsCopyWith<$Res> {
  factory $CurrentUnitsCopyWith(
          CurrentUnits value, $Res Function(CurrentUnits) then) =
      _$CurrentUnitsCopyWithImpl<$Res, CurrentUnits>;
  @useResult
  $Res call({String? time, String? interval, String? temperature_2m});
}

/// @nodoc
class _$CurrentUnitsCopyWithImpl<$Res, $Val extends CurrentUnits>
    implements $CurrentUnitsCopyWith<$Res> {
  _$CurrentUnitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? interval = freezed,
    Object? temperature_2m = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature_2m: freezed == temperature_2m
          ? _value.temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentUnitsImplCopyWith<$Res>
    implements $CurrentUnitsCopyWith<$Res> {
  factory _$$CurrentUnitsImplCopyWith(
          _$CurrentUnitsImpl value, $Res Function(_$CurrentUnitsImpl) then) =
      __$$CurrentUnitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? time, String? interval, String? temperature_2m});
}

/// @nodoc
class __$$CurrentUnitsImplCopyWithImpl<$Res>
    extends _$CurrentUnitsCopyWithImpl<$Res, _$CurrentUnitsImpl>
    implements _$$CurrentUnitsImplCopyWith<$Res> {
  __$$CurrentUnitsImplCopyWithImpl(
      _$CurrentUnitsImpl _value, $Res Function(_$CurrentUnitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? interval = freezed,
    Object? temperature_2m = freezed,
  }) {
    return _then(_$CurrentUnitsImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature_2m: freezed == temperature_2m
          ? _value.temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentUnitsImpl implements _CurrentUnits {
  const _$CurrentUnitsImpl({this.time, this.interval, this.temperature_2m});

  factory _$CurrentUnitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentUnitsImplFromJson(json);

  @override
  final String? time;
  @override
  final String? interval;
  @override
  final String? temperature_2m;

  @override
  String toString() {
    return 'CurrentUnits(time: $time, interval: $interval, temperature_2m: $temperature_2m)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentUnitsImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.temperature_2m, temperature_2m) ||
                other.temperature_2m == temperature_2m));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, interval, temperature_2m);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentUnitsImplCopyWith<_$CurrentUnitsImpl> get copyWith =>
      __$$CurrentUnitsImplCopyWithImpl<_$CurrentUnitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentUnitsImplToJson(
      this,
    );
  }
}

abstract class _CurrentUnits implements CurrentUnits {
  const factory _CurrentUnits(
      {final String? time,
      final String? interval,
      final String? temperature_2m}) = _$CurrentUnitsImpl;

  factory _CurrentUnits.fromJson(Map<String, dynamic> json) =
      _$CurrentUnitsImpl.fromJson;

  @override
  String? get time;
  @override
  String? get interval;
  @override
  String? get temperature_2m;
  @override
  @JsonKey(ignore: true)
  _$$CurrentUnitsImplCopyWith<_$CurrentUnitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
