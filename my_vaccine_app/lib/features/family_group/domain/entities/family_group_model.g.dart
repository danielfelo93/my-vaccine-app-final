// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FamilyGroupImpl _$$FamilyGroupImplFromJson(Map<String, dynamic> json) =>
    _$FamilyGroupImpl(
      familyGroupId: json['familyGroupId'] as String,
      dependents: json['dependents'] as List<dynamic>?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$FamilyGroupImplToJson(_$FamilyGroupImpl instance) =>
    <String, dynamic>{
      'familyGroupId': instance.familyGroupId,
      'dependents': instance.dependents,
      'name': instance.name,
    };
