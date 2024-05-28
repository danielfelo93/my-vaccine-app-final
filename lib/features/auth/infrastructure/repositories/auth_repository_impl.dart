

import 'package:flutter/widgets.dart';
import 'package:my_vaccine_app/features/auth/domain/datasources/auth_datasource.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/register_user_request/register_user_request.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/user.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/user_info/user_info.dart';
import 'package:my_vaccine_app/features/auth/domain/repositories/auth_repository.dart';

import '../infrastructure.dart';


class AuthRepositoryImpl extends AuthRepository {

  final AuthDataSource dataSource;

  AuthRepositoryImpl({
    AuthDataSource? dataSource
  }) : dataSource = dataSource ?? AuthDataSourceImpl();

  @override
  Future<UserInfo> checkAuthStatus(String token) {
    return dataSource.checkAuthStatus(token);
  }

  @override
  Future<UserPhotoResult> login(String email, String password) {
    return dataSource.login(email, password);
  }

  @override
  Future register(RegisterUserRequest registerUserRequest) async {
    await dataSource.register(registerUserRequest);
  }

  @override
  Future<Image?> getUserPhotoProfile(String token) async{
    return dataSource.getUserPhotoProfile(token);
  }

}