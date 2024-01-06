import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_project/core/failures.dart';
import 'package:sample_project/data/homepage_model.dart';
import 'package:sample_project/domain/homepage_repo.dart';

@lazySingleton
class HomepageUscase {
  final HomepageRepo homepageRepo;

  HomepageUscase({required this.homepageRepo});
  Future<Either<Failure, List<HomePagemodel>>> gethompagedata() async {
    final homepagedata = await homepageRepo.gethomepagedata();
    return homepagedata;
  }
}
