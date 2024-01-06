import 'package:dartz/dartz.dart';
import 'package:sample_project/core/failures.dart';
import 'package:sample_project/data/homepage_model.dart';
import 'package:sample_project/domain/homepage_entity.dart';

abstract class HomepageRepo {
  Future<Either<Failure, List<HomePagemodel>>> gethomepagedata();
}
