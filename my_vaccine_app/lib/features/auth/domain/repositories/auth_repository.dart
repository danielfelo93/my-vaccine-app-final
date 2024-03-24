import 'package:flutter/material.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/user_model.dart';

abstract class AuthRepository {
  Future<User?> login(String email, String password);
  Future<User?> register(String email, String password);
  Future<User?> checkStatus(String token);
  Future<User?> getUserInfoAuth();
  Future<Image?> getUserPhotoProfile();
}
