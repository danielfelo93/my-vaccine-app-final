import 'package:flutter/widgets.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/register_user_request/register_user_request.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/user_info/user_info.dart';

import '../entities/user.dart';

abstract class AuthDataSource {
  Future<UserPhotoResult> login(String email, String password);
  Future register(RegisterUserRequest registerUserRequest);
  Future<UserInfo> checkAuthStatus(String token);
  Future<Image?> getUserPhotoProfile(String token);
}
