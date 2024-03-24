import 'dart:typed_data';

import 'package:flutter/material.dart';


import 'package:dio/dio.dart';
import 'package:my_vaccine_app/config/constants/environment.dart';
import 'package:my_vaccine_app/data/injector.dart';

import 'package:my_vaccine_app/features/auth/domain/datasources/auth_datasources.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/user_model.dart';
import 'package:my_vaccine_app/features/auth/infrastructure/errors/auth_errors.dart';
import 'package:my_vaccine_app/features/shared/infrastructure/services/key_value_storage_service.dart';

class AuthDatasourceImpl extends AuthDatasources {
  final dio = Dio(BaseOptions(baseUrl: Environment.apiUrl));
  Future<User?> login(String email, String password) async {
    try {
      final response = dio.post('/api/auth/login',
          data: {'username': email, 'password': password});
      final responseFull = (await response).data;
      final user = User.fromJson(responseFull);
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
  Future<User?> register(String email, String password) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<User?> checkStatus(String token) async {
    try {
      final response = dio.post('/api/auth/refresh-token', options: Options(
        headers: {
          'Authorization': 'Bearer $token'
        }
      ));
      final responseFull = (await response).data;
      final user = User.fromJson(responseFull);
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
  Future<User?> getUserInfoAuth() async{
     final KeyValueStorageService keyValueStorageService =
        getIt<KeyValueStorageService>();
              final token = await keyValueStorageService.getValue<String>('token');

    try {
      final response = dio.get('/api/auth/user-info', options: Options(
        headers: {
          'Authorization': 'Bearer $token'
        }
      ));
      final responseFull = (await response).data;
      final user = User.fromJson(responseFull);
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

   Future<Image?> getUserPhotoProfile() async {
    final KeyValueStorageService keyValueStorageService = getIt<KeyValueStorageService>();
    try {
      final String? token = await keyValueStorageService.getValue<String>('token');
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
