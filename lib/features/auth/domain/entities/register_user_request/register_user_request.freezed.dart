// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterUserRequest _$RegisterUserRequestFromJson(Map<String, dynamic> json) {
  return _RegisterUserRequest.fromJson(json);
}

/// @nodoc
mixin _$RegisterUserRequest {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  DateTime get birthdate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterUserRequestCopyWith<RegisterUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserRequestCopyWith<$Res> {
  factory $RegisterUserRequestCopyWith(
          RegisterUserRequest value, $Res Function(RegisterUserRequest) then) =
      _$RegisterUserRequestCopyWithImpl<$Res, RegisterUserRequest>;
  @useResult
  $Res call(
      {String username,
      String password,
      String firstName,
      String lastName,
      DateTime birthdate});
}

/// @nodoc
class _$RegisterUserRequestCopyWithImpl<$Res, $Val extends RegisterUserRequest>
    implements $RegisterUserRequestCopyWith<$Res> {
  _$RegisterUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? birthdate = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterUserRequestImplCopyWith<$Res>
    implements $RegisterUserRequestCopyWith<$Res> {
  factory _$$RegisterUserRequestImplCopyWith(_$RegisterUserRequestImpl value,
          $Res Function(_$RegisterUserRequestImpl) then) =
      __$$RegisterUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String password,
      String firstName,
      String lastName,
      DateTime birthdate});
}

/// @nodoc
class __$$RegisterUserRequestImplCopyWithImpl<$Res>
    extends _$RegisterUserRequestCopyWithImpl<$Res, _$RegisterUserRequestImpl>
    implements _$$RegisterUserRequestImplCopyWith<$Res> {
  __$$RegisterUserRequestImplCopyWithImpl(_$RegisterUserRequestImpl _value,
      $Res Function(_$RegisterUserRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? birthdate = null,
  }) {
    return _then(_$RegisterUserRequestImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterUserRequestImpl implements _RegisterUserRequest {
  _$RegisterUserRequestImpl(
      {required this.username,
      required this.password,
      required this.firstName,
      required this.lastName,
      required this.birthdate});

  factory _$RegisterUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterUserRequestImplFromJson(json);

  @override
  final String username;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final DateTime birthdate;

  @override
  String toString() {
    return 'RegisterUserRequest(username: $username, password: $password, firstName: $firstName, lastName: $lastName, birthdate: $birthdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserRequestImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, username, password, firstName, lastName, birthdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserRequestImplCopyWith<_$RegisterUserRequestImpl> get copyWith =>
      __$$RegisterUserRequestImplCopyWithImpl<_$RegisterUserRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterUserRequestImplToJson(
      this,
    );
  }
}

abstract class _RegisterUserRequest implements RegisterUserRequest {
  factory _RegisterUserRequest(
      {required final String username,
      required final String password,
      required final String firstName,
      required final String lastName,
      required final DateTime birthdate}) = _$RegisterUserRequestImpl;

  factory _RegisterUserRequest.fromJson(Map<String, dynamic> json) =
      _$RegisterUserRequestImpl.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  DateTime get birthdate;
  @override
  @JsonKey(ignore: true)
  _$$RegisterUserRequestImplCopyWith<_$RegisterUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
