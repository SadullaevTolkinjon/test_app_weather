// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import '../data/api/api.dart' as _i3;
import '../data/api/auth_api.dart' as _i4;
import '../data/api/main_api.dart' as _i7;
import '../data/preferences/token_preferences.dart' as _i11;
import '../domain/repository/auth/auth/auth_repository.dart' as _i13;
import '../domain/repository/auth/auth/auth_repository_implementation.dart'
    as _i14;
import '../domain/repository/main_repository.dart' as _i8;
import '../domain/service/main_serivce.dart' as _i9;
import '../presentation/auth/login/bloc/login_bloc_bloc.dart' as _i15;
import '../presentation/calculator_screen/cubit/calculator_cubit.dart' as _i5;
import '../presentation/home/cubit/home_cubit.dart' as _i6;
import '../presentation/weather_screen/cubit/weather_cubit.dart' as _i12;
import 'data_module.dart' as _i16;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModule = _$DataModule();
    gh.factory<_i3.Api>(() => _i3.Api());
    gh.factory<_i4.AuthApi>(() => _i4.AuthApi(gh<_i3.Api>()));
    gh.factory<_i5.CalculatorCubit>(() => _i5.CalculatorCubit());
    gh.factory<_i6.HomeCubit>(() => _i6.HomeCubit());
    gh.factory<_i7.MainApi>(() => _i7.MainApi(gh<_i3.Api>()));
    gh.factory<_i8.MainRepository>(() => _i8.MainRepository(gh<_i7.MainApi>()));
    gh.factory<_i9.MainService>(() => _i9.MainService(gh<_i7.MainApi>()));
    await gh.factoryAsync<_i10.SharedPreferences>(
      () => dataModule.prefs,
      preResolve: true,
    );
    gh.factory<_i11.TokenPreference>(
        () => _i11.TokenPreference(gh<_i10.SharedPreferences>()));
    gh.factory<_i12.WeatherCubit>(
        () => _i12.WeatherCubit(gh<_i9.MainService>()));
    gh.factory<_i13.AuthRepository>(() => _i14.AuthRepositoryImpl(
          gh<_i4.AuthApi>(),
          gh<_i11.TokenPreference>(),
        ));
    gh.factory<_i15.LoginBlocBloc>(
        () => _i15.LoginBlocBloc(gh<_i13.AuthRepository>()));
    return this;
  }
}

class _$DataModule extends _i16.DataModule {}
