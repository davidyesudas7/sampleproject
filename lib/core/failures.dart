import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

// abstract class Failure {}

// class ServerFailure extends Failure {}

// class GeneralaFailure extends Failure {}

// class CacheFailure extends Failure {}

// constant failures

const String kGenaralfailure = 'sorry something went wrong';
const String kCachefailure = 'something wrong with the cache';
const String kServerfailure = 'server error';

@freezed
class Failure with _$Failure {
  const factory Failure({required String errormessage}) = _Failure;

  factory Failure.serverfailure() {
    return const Failure(errormessage: kServerfailure);
  }
  factory Failure.genaralfailure() {
    return const Failure(errormessage: kGenaralfailure);
  }
  factory Failure.cachefailure() {
    return const Failure(errormessage: kCachefailure);
  }
}
