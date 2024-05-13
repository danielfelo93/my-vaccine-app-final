import 'package:dartz/dartz.dart';
import 'package:my_vaccine_app/core/error/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> signIn(bool status);
  Future<Either<Failure, bool>> isLoggedIn();
}