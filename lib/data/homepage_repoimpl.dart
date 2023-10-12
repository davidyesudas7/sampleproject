import 'package:dartz/dartz.dart';
import 'package:sample_project/core/exceptions.dart';
import 'package:sample_project/core/failures.dart';
import 'package:sample_project/data/datasource/homepage_remotedatasource.dart';
import 'package:sample_project/domain/homepage_entity.dart';
import 'package:sample_project/domain/homepage_repo.dart';

class HomepageRepoImpl implements HomepageRepo {
  final HomepageRemoteData homepageRemoteData;

  HomepageRepoImpl({required this.homepageRemoteData});
  @override
  Future<Either<Failure, List<HomePageEntity>>> gethomepagedata() async {
    try {
      final remotedata = await homepageRemoteData.getremotedatasource();
      return right(remotedata);
    } on ServerException {
      return left(ServerFailure());
    } catch (e) {
      return left(GeneralaFailure());
    }
  }
}
