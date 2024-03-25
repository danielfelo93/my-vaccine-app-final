import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:my_vaccine_app/config/constants/environment.dart';
import 'package:my_vaccine_app/data/injector.dart';
import 'package:my_vaccine_app/features/auth/infrastructure/errors/auth_errors.dart';
import 'package:my_vaccine_app/features/family_group/domain/datasources/family_group_datasource.dart';
import 'package:my_vaccine_app/features/family_group/domain/entities/family_group_model.dart';
import 'package:my_vaccine_app/features/shared/infrastructure/services/key_value_storage_service.dart';

class FamilyGroupDatasourceImpl extends FamilyGroupDatasource {
  final dio = Dio(BaseOptions(baseUrl: Environment.apiUrl));

  @override
  Future<List<FamilyGroup>> fetchFamilyGroups() async {
    final KeyValueStorageService keyValueStorageService =
        getIt<KeyValueStorageService>();
    try {
      final String? token =
          await keyValueStorageService.getValue<String>('token');
      final response = dio.get('/api/FamilyGroup/mine',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      final responseFull = (await response).data;
      final List<FamilyGroup> familyGroups = (responseFull as List)
          .map((e) => FamilyGroup.fromJson(e))
          .toList();
      return familyGroups;
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
  addFamilyGroup(FamilyGroup familyGroup) async {
    final KeyValueStorageService keyValueStorageService =
        getIt<KeyValueStorageService>();
    try {
      final String? token =
          await keyValueStorageService.getValue<String>('token');
      final response = dio.post('/api/FamilyGroup',
          data: jsonEncode(familyGroup.toJson()),
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return response;
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
  updateFamilyGroup(String familyGroupId, FamilyGroup familyGroup) async {
    final KeyValueStorageService keyValueStorageService =
        getIt<KeyValueStorageService>();
    try {
      final String? token =
          await keyValueStorageService.getValue<String>('token');
      final response = dio.put('/api/FamilyGroup/$familyGroupId',
          data: jsonEncode(familyGroup.toJson()),
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return response;
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
  deleteFamilyGroup(String familyGroupId) async {
    final KeyValueStorageService keyValueStorageService =
        getIt<KeyValueStorageService>();
    try {
      final String? token =
          await keyValueStorageService.getValue<String>('token');
      final response = dio.delete('/api/FamilyGroup/$familyGroupId',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return response;
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

}
