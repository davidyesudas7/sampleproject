import 'package:dartz/dartz.dart';
import 'package:sample_project/core/failures.dart';
import 'package:sample_project/domain/homepage_entity.dart';
import 'package:sample_project/domain/homepage_repo.dart';

class HomepageUscase {
  final HomepageRepo homepageRepo;

  HomepageUscase({required this.homepageRepo});
  Future<Either<Failure, List<HomePageEntity>>> gethompagedata() async {
    final homepagedata = await homepageRepo.gethomepagedata();
    return homepagedata;
  }
}
