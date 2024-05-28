import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_user_request.freezed.dart';
part 'register_user_request.g.dart';

@freezed
class RegisterUserRequest with _$RegisterUserRequest {
  factory RegisterUserRequest({
    required String username,
    required String password,
    required String firstName,
    required String lastName,
    required DateTime birthdate,
  }) = _RegisterUserRequest;

  factory RegisterUserRequest.fromJson(Map<String, dynamic> json) => _$RegisterUserRequestFromJson(json);
}