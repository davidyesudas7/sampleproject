import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_project/core/exceptions.dart';
import 'package:sample_project/core/failures.dart';
import 'package:sample_project/data/datasource/homepage_remotedatasource.dart';
import 'package:sample_project/data/homepage_model.dart';
import 'package:sample_project/domain/homepage_repo.dart';

@LazySingleton(as: HomepageRepo)
class HomepageRepoImpl implements HomepageRepo {
  final HomepageRemoteData homepageRemoteData;

  HomepageRepoImpl({required this.homepageRemoteData});
  @override
  Future<Either<Failure, List<HomePagemodel>>> gethomepagedata() async {
    try {
      final remotedata = await homepageRemoteData.getremotedatasource();
      return right(remotedata);
    } on ServerException {
      return left(Failure.serverfailure());
    } on GenralException {
      debugPrint('pani paly');
      return left(Failure.genaralfailure());
    } catch (e) {
      log('genaralfailure${e.toString()}');
      return left(Failure.genaralfailure());
    }
  }
}
