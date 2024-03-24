// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      token: json['token'] as String?,
      birthdate: json['birthdate'] as String?,
      photo: json['photo'] as String?,
      dependents: json['dependents'] as List<dynamic>?,
      familyGroups: json['familyGroups'] as List<dynamic>?,
      vaccineRecords: json['vaccineRecords'] as List<dynamic>?,
      usersAllergies: json['usersAllergies'] as List<dynamic>?,
      expiration: json['expiration'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      errors: json['errors'],
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'token': instance.token,
      'birthdate': instance.birthdate,
      'photo': instance.photo,
      'dependents': instance.dependents,
      'familyGroups': instance.familyGroups,
      'vaccineRecords': instance.vaccineRecords,
      'usersAllergies': instance.usersAllergies,
      'expiration': instance.expiration,
      'isSuccess': instance.isSuccess,
      'errors': instance.errors,
    };
