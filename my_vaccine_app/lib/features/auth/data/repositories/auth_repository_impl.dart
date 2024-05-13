import 'package:dartz/dartz.dart';
import 'package:my_vaccine_app/core/error/exceptions.dart';
import 'package:my_vaccine_app/core/error/failure.dart';
import 'package:my_vaccine_app/features/auth/data/data_sources/auth_local_data_source.dart';
import 'package:my_vaccine_app/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {

  final AuthLocalDataSource authLocalDataSource;

  AuthRepositoryImpl({required this.authLocalDataSource});

  @override
  Future<Either<Failure, bool>> isLoggedIn() async{
    try{
      final response = await authLocalDataSource.isLoggedIn();
      return Right(response);
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> signIn(bool status) async {
    try{
      final response = await authLocalDataSource.signIn(status);
      return Right(response);
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }

}