import 'package:get_it/get_it.dart';
import 'package:sample_project/application/provider/homepage_data_provider.dart';
import 'package:sample_project/data/datasource/homepage_remotedatasource.dart';
import 'package:sample_project/data/homepage_repoimpl.dart';
import 'package:sample_project/domain/homepage_repo.dart';
import 'package:sample_project/domain/homepage_uscase.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.I;

Future<void> init() async {
  sl.registerFactory(() => HomepageDtatProvider(homepageUscase: sl()));
  sl.registerFactory(() => HomepageUscase(homepageRepo: sl()));
  sl.registerFactory<HomepageRepo>(
      () => HomepageRepoImpl(homepageRemoteData: sl()));
  sl.registerFactory<HomepageRemoteData>(
      () => HomepageRemoteDataImpl(client: sl()));
  sl.registerFactory(() => http.Client());
}
