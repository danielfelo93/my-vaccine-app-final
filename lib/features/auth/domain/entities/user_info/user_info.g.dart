// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      id: json['id'] as String?,
      email: json['userName'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      birthdate: json['birthdate'] == null
          ? null
          : DateTime.parse(json['birthdate'] as String),
      photo: json['photo'] as String?,
      dependents: json['dependents'] as List<dynamic>?,
      familyGroups: (json['familyGroups'] as List<dynamic>?)
          ?.map((e) => FamilyGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      vaccineRecords: json['vaccineRecords'] as List<dynamic>?,
      usersAllergies: json['usersAllergies'] as List<dynamic>?,
      token: json['token'] as String?,
      expiration: json['expiration'] == null
          ? null
          : DateTime.parse(json['expiration'] as String),
      isSuccess: json['isSuccess'] as bool?,
      errors: json['errors'],
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'birthdate': instance.birthdate?.toIso8601String(),
      'photo': instance.photo,
      'dependents': instance.dependents,
      'familyGroups': instance.familyGroups,
      'vaccineRecords': instance.vaccineRecords,
      'usersAllergies': instance.usersAllergies,
      'token': instance.token,
      'expiration': instance.expiration?.toIso8601String(),
      'isSuccess': instance.isSuccess,
      'errors': instance.errors,
    };

_$FamilyGroupImpl _$$FamilyGroupImplFromJson(Map<String, dynamic> json) =>
    _$FamilyGroupImpl(
      familyGroupId: json['familyGroupId'] as String?,
      dependents: json['dependents'] as List<dynamic>?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$FamilyGroupImplToJson(_$FamilyGroupImpl instance) =>
    <String, dynamic>{
      'familyGroupId': instance.familyGroupId,
      'dependents': instance.dependents,
      'name': instance.name,
    };
