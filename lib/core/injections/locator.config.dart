// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cross_connectivity/cross_connectivity.dart' as _i4;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/anime/data/repositories/anime_repository_impl.dart'
    as _i11;
import '../../features/anime/domain/repositories/anime_repository.dart' as _i10;
import '../../router/router.dart' as _i3;
import '../../services/network/network_info.dart' as _i6;
import '../../services/network/network_info_impl.dart' as _i7;
import '../../services/network/network_service.dart' as _i8;
import '../../services/network/network_service_impl.dart' as _i9;
import 'register_module.dart' as _i12;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.AppRouter>(() => registerModule.appRouter);
    gh.lazySingleton<_i4.Connectivity>(() => registerModule.connectivity);
    gh.lazySingleton<_i5.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i6.NetworkInfo>(
        () => _i7.NetworkInfoImpl(connectivity: gh<_i4.Connectivity>()));
    gh.lazySingleton<_i8.NetworkService>(() => _i9.NetworkServiceImpl(
          gh<_i5.Dio>(),
          networkInfo: gh<_i6.NetworkInfo>(),
        ));
    gh.lazySingleton<_i10.AnimeRepository>(
        () => _i11.AnimeRepositoryImpl(gh<_i8.NetworkService>()));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {
  @override
  _i3.AppRouter get appRouter => _i3.AppRouter();

  @override
  _i4.Connectivity get connectivity => _i4.Connectivity();
}
