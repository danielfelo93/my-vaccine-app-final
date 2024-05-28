// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterUserRequestImpl _$$RegisterUserRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterUserRequestImpl(
      username: json['username'] as String,
      password: json['password'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      birthdate: DateTime.parse(json['birthdate'] as String),
    );

Map<String, dynamic> _$$RegisterUserRequestImplToJson(
        _$RegisterUserRequestImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'birthdate': instance.birthdate.toIso8601String(),
    };
