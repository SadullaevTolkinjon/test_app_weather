part of 'home_cubit.dart';

abstract class HomeState {}

@freezed
class HomeBuildableState extends HomeState with _$HomeBuildableState {
  const factory HomeBuildableState({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
    @Default(true) bool obsecure,
    @Default(0) int currentIndex,
    File? imagePath,
    @Default(false) bool checkboxVal,
    @Default(false) bool is_image_failed,
    @Default(false) bool is_date_failed,
    @Default(false) bool is_privacy_failed,
    DateTime? time,
  }) = _HomeBuildableState;
}
