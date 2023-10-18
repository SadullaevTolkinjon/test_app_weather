// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityLocation _$CityLocationFromJson(Map<String, dynamic> json) {
  return _CityLocation.fromJson(json);
}

/// @nodoc
mixin _$CityLocation {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityLocationCopyWith<CityLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityLocationCopyWith<$Res> {
  factory $CityLocationCopyWith(
          CityLocation value, $Res Function(CityLocation) then) =
      _$CityLocationCopyWithImpl<$Res, CityLocation>;
  @useResult
  $Res call({double? latitude, double? longitude, String? city});
}

/// @nodoc
class _$CityLocationCopyWithImpl<$Res, $Val extends CityLocation>
    implements $CityLocationCopyWith<$Res> {
  _$CityLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? city = freezed,
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
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityLocationImplCopyWith<$Res>
    implements $CityLocationCopyWith<$Res> {
  factory _$$CityLocationImplCopyWith(
          _$CityLocationImpl value, $Res Function(_$CityLocationImpl) then) =
      __$$CityLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? latitude, double? longitude, String? city});
}

/// @nodoc
class __$$CityLocationImplCopyWithImpl<$Res>
    extends _$CityLocationCopyWithImpl<$Res, _$CityLocationImpl>
    implements _$$CityLocationImplCopyWith<$Res> {
  __$$CityLocationImplCopyWithImpl(
      _$CityLocationImpl _value, $Res Function(_$CityLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? city = freezed,
  }) {
    return _then(_$CityLocationImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityLocationImpl implements _CityLocation {
  const _$CityLocationImpl(
      {required this.latitude, required this.longitude, required this.city});

  factory _$CityLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityLocationImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? city;

  @override
  String toString() {
    return 'CityLocation(latitude: $latitude, longitude: $longitude, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityLocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityLocationImplCopyWith<_$CityLocationImpl> get copyWith =>
      __$$CityLocationImplCopyWithImpl<_$CityLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityLocationImplToJson(
      this,
    );
  }
}

abstract class _CityLocation implements CityLocation {
  const factory _CityLocation(
      {required final double? latitude,
      required final double? longitude,
      required final String? city}) = _$CityLocationImpl;

  factory _CityLocation.fromJson(Map<String, dynamic> json) =
      _$CityLocationImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  String? get city;
  @override
  @JsonKey(ignore: true)
  _$$CityLocationImplCopyWith<_$CityLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
