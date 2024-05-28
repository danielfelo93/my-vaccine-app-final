import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/register_user_request/register_user_request.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/user.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/user_info/user_info.dart';
import 'package:my_vaccine_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:my_vaccine_app/features/auth/infrastructure/errors/auth_errors.dart';
import 'package:my_vaccine_app/features/auth/infrastructure/repositories/auth_repository_impl.dart';
import 'package:my_vaccine_app/features/shared/infrastructure/services/key_value_storage_service.dart';
import 'package:my_vaccine_app/features/shared/infrastructure/services/key_value_storage_service_impl.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final authRepository = AuthRepositoryImpl();
  final keyValueStorageService = KeyValueStorageServiceImpl();

  return AuthNotifier(
      authRepository: authRepository,
      keyValueStorageService: keyValueStorageService);
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository authRepository;
  final KeyValueStorageService keyValueStorageService;

  AuthNotifier({
    required this.authRepository,
    required this.keyValueStorageService,
  }) : super(AuthState()) {
    checkAuthStatus();
  }

  Future<UserPhotoResult> loginUser(String email, String password) async {
    UserPhotoResult response = UserPhotoResult();
    try {
      response = await authRepository.login(email, password);

      if (response.user != null) {
        _setLoggedUser(response?.user ?? UserInfo());
      }
      // final userPhotoProfile = await authRepository.getUserPhotoProfile(response.user?.token??'' );
      _setuserProfilePhoto(response.user ?? UserInfo(), response.photo);
    } on CustomError catch (e) {
      logout(e.message);
    } catch (e) {
      logout('Error no controlado');
    }
    return response;

    // final user = await authRepository.login(email, password);
    // state =state.copyWith(user: user, authStatus: AuthStatus.authenticated)
  }

  Future registerUser(RegisterUserRequest registerUserRequest) async {
    try {
      final user = await authRepository.register(registerUserRequest);
      _setLoggedUser(user);
    } catch (e) {}
  }

  void checkAuthStatus() async {
    final token = await keyValueStorageService.getValue<String>('token');
    if (token == null) return logout();

    try {
      final user = await authRepository.checkAuthStatus(token);
      _setLoggedUserInfo(user);
    } catch (e) {
      logout();
    }
  }

  void _setLoggedUser(UserInfo user) async {
    await keyValueStorageService.setKeyValue<String>('token', user.token ?? '');
    await keyValueStorageService.setKeyValue<String>(
        'userInfo', user.toString());

    // state = state.copyWith(
    //   user: user,
    //   authStatus: AuthStatus.authenticated,
    //   errorMessage: '',
    // );
  }

  void _setLoggedUserInfo(UserInfo user) async {
    await keyValueStorageService.setKeyValue<String>(
        'userInfo', user.toString());

    state = state.copyWith(
      user: user,
      authStatus: AuthStatus.authenticated,
    );
  }

  void _setuserProfilePhoto(UserInfo user, Image? userPhotoProfile) async {
    state = state.copyWith(
        user: user,
        token: user.token,
        authStatus: AuthStatus.authenticated,
        errorMessage: '',
        userPhotoProfile: userPhotoProfile);
  }

  Future<void> logout([String? errorMessage]) async {
    await keyValueStorageService.removeKey('token');

    state = state.copyWith(
        authStatus: AuthStatus.notAuthenticated,
        user: null,
        errorMessage: errorMessage);
  }
}

enum AuthStatus { checking, authenticated, notAuthenticated }

class AuthState {
  final AuthStatus authStatus;
  final UserInfo? user;
  final String errorMessage;
  final Image? userPhotoProfile;
  final String? token;
  AuthState(
      {this.authStatus = AuthStatus.checking,
      this.user,
      this.errorMessage = '',
      this.token,
      this.userPhotoProfile});

  AuthState copyWith(
          {AuthStatus? authStatus,
          UserInfo? user,
          String? errorMessage,
          String? token,
          Image? userPhotoProfile}) =>
      AuthState(
          authStatus: authStatus ?? this.authStatus,
          user: user ?? this.user,
          errorMessage: errorMessage ?? this.errorMessage,
          token: token ?? this.token,
          userPhotoProfile: userPhotoProfile ?? this.userPhotoProfile);
}
