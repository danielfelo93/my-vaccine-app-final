import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  factory User({
    String? id,
    String? email,
    String? firstName,
    String? secondName,
    String? firstLastName,
    String? secondLastName,
    List<String>? roles,
    String? token,
  }) = _User;
  factory User.fromJson(Map<String, dynamic?> json) => _$UserFromJson(json);
  // bool get isAdmin{
  //   return roles?.contains('admin') ?? false;
  // }
}
