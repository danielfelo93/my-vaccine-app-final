import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_vaccine_app/data/injector.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/user_model.dart';
import 'package:my_vaccine_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:my_vaccine_app/features/shared/infrastructure/services/key_value_storage_service.dart';

import '../../infrastructure/repositories/auth_repository.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final authRepository = AuthRepositoryImpl();
  return AuthNotifier(authRepository: authRepository);
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository authRepository;
  AuthNotifier({required this.authRepository}) : super(AuthState());
 Future<UserPhotoResult> loginUser(String email, String password) async {
  final KeyValueStorageService keyValueStorageService = getIt<KeyValueStorageService>();
  try {
    final authResponse = await authRepository.login(email, password);
    if(authResponse != null) {
      User user = updateUserFromAuthResponse(authResponse, authResponse.toJson());
      await keyValueStorageService.setKeyValue('token', user.token);

      final profileResponse = await getUserInfo();
      if(profileResponse != null) {
        user = updateUserFromProfileResponse(user, profileResponse.toJson());
      }
      
      final userPhotoProfile = await authRepository.getUserPhotoProfile();
      _setLoggedUser(user, userPhotoProfile);

      return UserPhotoResult(user: user, photo: userPhotoProfile);
    } else {
      // Manejo cuando authResponse es null
      return UserPhotoResult();
    }
  } catch (e) {
    await logout('Invalid credentials');
    return UserPhotoResult(); // Retorna objetos nulos en caso de error
  }
}
  void registerUser() {}

  void checkStatus() {}

  void _setLoggedUser(User? user, Image? userPhotoProfile) async {
     final KeyValueStorageService keyValueStorageService =
        getIt<KeyValueStorageService>();
  // await keyValueStorageService.setKeyValue('token', user?.token);

    state = state.copyWith(AuthStatus.authenticated, user, null, userPhotoProfile);
  }

  Future<void> logout(String? errorMessage) async {
    state = state.copyWith(AuthStatus.unauthenticated, null, errorMessage, null);
  }

  Future<User?> getUserInfo() async {
    final AuthRepository authRepository = getIt<AuthRepository>();
    final KeyValueStorageService keyValueStorageService =
        getIt<KeyValueStorageService>();
    try {
      final token = await keyValueStorageService.getValue<String>('token');

      final user = await authRepository.getUserInfoAuth();
      // _setLoggedUser(user);
      return user;
    } catch (e) {
      await logout('Invalid credentials');
    }
  }

  

  User updateUserFromAuthResponse(User user, Map<String, dynamic> json) {
    return user.copyWith(
      token: json['token'] as String?,
      expiration: json['expiration'] as String?,
    );
  }

  User updateUserFromProfileResponse(User user, Map<String, dynamic> json) {
    return user.copyWith(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      birthdate: json['birthdate'] as String?,
      photo: json['photo'] as String?,
      dependents: json['dependents'] as List<dynamic>?,
      familyGroups: json['familyGroups'] as List<dynamic>?,
      vaccineRecords: json['vaccineRecords'] as List<dynamic>?,
      usersAllergies: json['usersAllergies'] as List<dynamic>?,
    );
  }
}

enum AuthStatus { checking, authenticated, unauthenticated, notAuthenticated }

class AuthState {
  final AuthStatus authStatus;
  final User? user;
  final String? errorMessage;
  final Image? userPhotoProfile;
  AuthState(
      {this.authStatus = AuthStatus.checking,
      this.user,
      this.errorMessage = '',this.userPhotoProfile});
  AuthState copyWith(
          AuthStatus? authStatus, User? user, String? errorMessage, Image? userPhotoProfile) =>
      AuthState(
          authStatus: authStatus ?? this.authStatus,
          user: user ?? this.user,
          errorMessage: errorMessage,
          userPhotoProfile: userPhotoProfile ?? this.userPhotoProfile);
}
