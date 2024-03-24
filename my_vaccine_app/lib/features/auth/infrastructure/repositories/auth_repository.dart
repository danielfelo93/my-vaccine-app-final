import 'package:flutter/material.dart';
import 'package:my_vaccine_app/features/auth/domain/datasources/auth_datasources.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/user_model.dart';
import 'package:my_vaccine_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:my_vaccine_app/features/auth/infrastructure/datasources/auth_datasource_impl.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthDatasources _datasources;

  AuthRepositoryImpl({AuthDatasources? datasources})
      : _datasources = datasources ?? AuthDatasourceImpl();

  @override
  Future<User?> login(String email, String password) {
    return _datasources.login(email, password);
  }

  @override
  Future<User?> register(String email, String password) {
    return _datasources.register(email, password);
  }

  @override
  Future<User?> checkStatus(String token) {
    return _datasources.checkStatus(token);
  }

  @override
  Future<User?> getUserInfoAuth() {
    return _datasources.getUserInfoAuth();
  }
  
  @override
  Future<Image?> getUserPhotoProfile() {
    return _datasources.getUserPhotoProfile();
  }
}
