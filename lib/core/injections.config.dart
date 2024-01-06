// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../application/bloc/sample_bloc_bloc.dart' as _i8;
import '../data/datasource/homepage_remotedatasource.dart' as _i4;
import '../data/homepage_repoimpl.dart' as _i6;
import '../domain/homepage_repo.dart' as _i5;
import '../domain/homepage_uscase.dart' as _i7;
import 'injections.dart' as _i9;

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
    gh.singleton<_i3.Client>(registerModule.httpClient);
    gh.lazySingleton<_i4.HomepageRemoteData>(
        () => _i4.HomepageRemoteDataImpl(client: gh<_i3.Client>()));
    gh.lazySingleton<_i5.HomepageRepo>(() =>
        _i6.HomepageRepoImpl(homepageRemoteData: gh<_i4.HomepageRemoteData>()));
    gh.lazySingleton<_i7.HomepageUscase>(
        () => _i7.HomepageUscase(homepageRepo: gh<_i5.HomepageRepo>()));
    gh.factory<_i8.SampleBlocBloc>(
        () => _i8.SampleBlocBloc(homepageUscase: gh<_i7.HomepageUscase>()));
    return this;
  }
}

class _$RegisterModule extends _i9.RegisterModule {}
