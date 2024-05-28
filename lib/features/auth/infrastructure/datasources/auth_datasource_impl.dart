import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:my_vaccine_app/config/constants/environment.dart';
import 'package:my_vaccine_app/features/auth/domain/datasources/auth_datasource.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/register_user_request/register_user_request.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/user.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/user_info/user_info.dart';
import 'package:my_vaccine_app/features/auth/infrastructure/errors/auth_errors.dart';
import 'package:my_vaccine_app/features/auth/infrastructure/mappers/user_mapper.dart';
import 'package:my_vaccine_app/features/shared/infrastructure/services/key_value_storage_service.dart';


class AuthDataSourceImpl extends AuthDataSource {

  final dio = Dio(
    BaseOptions(
      baseUrl: Environment.apiUrl,
    )
  );

  @override
  Future<UserPhotoResult> login(String email, String password) async {
    try {
      final response = dio.post('/api/auth/login',
          data: {'username': email, 'password': password});
      final responseFull = (await response).data;
      final userInfo= await getUserInfoAuth(responseFull['token']);
      final combinedUserInfo = {
       "token": responseFull['token'],
       "expiration": responseFull['expiration'],
        ...userInfo?.toJson() ?? {}, 
      };
      final user = UserInfo.fromJson({...combinedUserInfo,"token": responseFull['token'], "expiration": responseFull['expiration']});
      final userPhotoProfile = await getUserPhotoProfile(user.token ?? '');

      return UserPhotoResult(user: user, photo: userPhotoProfile);    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw CustomError(
            e.response?.data['message'] ?? 'Credenciales incorrectas');
      }
      if (e.type == DioExceptionType.connectionTimeout) {
        throw CustomError('Revisar conexión a internet');
      }
      throw Exception();
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future register(RegisterUserRequest registerUserRequest) async {
    final url = '/api/Auth/register';
    try {
      final response = await dio.post(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'accept': '*/*',
          },
        ),
        data: registerUserRequest.toJson(),
      );

      
    } on DioError catch (e) {
      throw Exception('Failed to register user: ${e.response?.data ?? e.message}');
    }
  }


  @override
  Future<UserInfo> checkAuthStatus( String token ) async {
    try {
      final response = dio.post('/api/auth/refresh-token', options: Options(
        headers: {
          'Authorization': 'Bearer $token'
        }
      ));
      final responseFull = (await response).data;
      final user = UserInfo.fromJson(responseFull);
      return user;
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw CustomError(
            e.response?.data['message'] ?? 'Credenciales incorrectas');
      }
      if (e.type == DioExceptionType.connectionTimeout) {
        throw CustomError('Revisar conexión a internet');
      }
      throw Exception();
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<UserInfo?> getUserInfoAuth(String token) async{
    try {
      final response = dio.get('/api/auth/user-info', options: Options(
        headers: {
          'Authorization': 'Bearer $token'
        }
      ));
      final responseFull = (await response).data;
      final user = UserInfo.fromJson(responseFull);
      return user;
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw CustomError(
            e.response?.data['message'] ?? 'Credenciales incorrectas');
      }
      if (e.type == DioExceptionType.connectionTimeout) {
        throw CustomError('Revisar conexión a internet');
      }
      throw Exception();
    } catch (e) {
      throw Exception();
    }
  }

  @override
   Future<Image?> getUserPhotoProfile(String token) async {
    try {
      if (token == null) throw Exception("Token is null");

      final response = await dio.get('/api/auth/get-user-photo-profile',
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
          responseType: ResponseType.bytes, // Importante para obtener la imagen como bytes
        ),
      );

  

      if (response.statusCode == 200) {
        final bytes = response.data as List<int>;
        return Image.memory(Uint8List.fromList(bytes)); // Convertir bytes a widget de imagen
      } else {
        throw Exception('Failed to load user photo profile');
      }
    } catch (e) {
      print('Exception when calling getUserPhotoProfile: $e');
      return null; // Considera manejar el error de manera adecuada
    }
  }
}
