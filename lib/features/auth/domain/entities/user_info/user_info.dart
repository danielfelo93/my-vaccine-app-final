import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
class UserInfo with _$UserInfo {
  factory UserInfo({
    String? id,
    @JsonKey(name: 'userName')  String? email,
    String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    DateTime? birthdate,
    String? photo,
    List<dynamic>? dependents,
    List<FamilyGroup>? familyGroups,
    List<dynamic>? vaccineRecords,
    List<dynamic>? usersAllergies,
    String? token,
    DateTime? expiration,
    bool? isSuccess,
    dynamic? errors,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);
}

@freezed
class FamilyGroup with _$FamilyGroup {
  factory FamilyGroup({
     String? familyGroupId,
    List<dynamic>? dependents,
    String? name,
  }) = _FamilyGroup;

  factory FamilyGroup.fromJson(Map<String, dynamic> json) =>
      _$FamilyGroupFromJson(json);
}


class UserPhotoResult {
  final UserInfo? user;
  final Image? photo;

  UserPhotoResult({this.user, this.photo});
}