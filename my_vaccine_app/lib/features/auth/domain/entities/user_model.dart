import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  factory User({
    String? id,
    String? userName,
    String? firstName,
    String? lastName,
    String? token,
    String? birthdate,
    String? photo,
    List<dynamic>? dependents,
    List<dynamic>? familyGroups,
    List<dynamic>? vaccineRecords,
    List<dynamic>? usersAllergies,
    String? expiration,
    bool? isSuccess,
    dynamic errors
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  // bool get isAdmin{
  //   return roles?.contains('admin') ?? false;
  // }
}


class UserPhotoResult {
  final User? user;
  final Image? photo;

  UserPhotoResult({this.user, this.photo});
}