// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get id => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  List<dynamic>? get dependents => throw _privateConstructorUsedError;
  List<dynamic>? get familyGroups => throw _privateConstructorUsedError;
  List<dynamic>? get vaccineRecords => throw _privateConstructorUsedError;
  List<dynamic>? get usersAllergies => throw _privateConstructorUsedError;
  String? get expiration => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  dynamic get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? id,
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
      dynamic errors});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? token = freezed,
    Object? birthdate = freezed,
    Object? photo = freezed,
    Object? dependents = freezed,
    Object? familyGroups = freezed,
    Object? vaccineRecords = freezed,
    Object? usersAllergies = freezed,
    Object? expiration = freezed,
    Object? isSuccess = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      dependents: freezed == dependents
          ? _value.dependents
          : dependents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      familyGroups: freezed == familyGroups
          ? _value.familyGroups
          : familyGroups // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      vaccineRecords: freezed == vaccineRecords
          ? _value.vaccineRecords
          : vaccineRecords // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      usersAllergies: freezed == usersAllergies
          ? _value.usersAllergies
          : usersAllergies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
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
      dynamic errors});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? token = freezed,
    Object? birthdate = freezed,
    Object? photo = freezed,
    Object? dependents = freezed,
    Object? familyGroups = freezed,
    Object? vaccineRecords = freezed,
    Object? usersAllergies = freezed,
    Object? expiration = freezed,
    Object? isSuccess = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      dependents: freezed == dependents
          ? _value._dependents
          : dependents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      familyGroups: freezed == familyGroups
          ? _value._familyGroups
          : familyGroups // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      vaccineRecords: freezed == vaccineRecords
          ? _value._vaccineRecords
          : vaccineRecords // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      usersAllergies: freezed == usersAllergies
          ? _value._usersAllergies
          : usersAllergies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {this.id,
      this.userName,
      this.firstName,
      this.lastName,
      this.token,
      this.birthdate,
      this.photo,
      final List<dynamic>? dependents,
      final List<dynamic>? familyGroups,
      final List<dynamic>? vaccineRecords,
      final List<dynamic>? usersAllergies,
      this.expiration,
      this.isSuccess,
      this.errors})
      : _dependents = dependents,
        _familyGroups = familyGroups,
        _vaccineRecords = vaccineRecords,
        _usersAllergies = usersAllergies;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String? id;
  @override
  final String? userName;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? token;
  @override
  final String? birthdate;
  @override
  final String? photo;
  final List<dynamic>? _dependents;
  @override
  List<dynamic>? get dependents {
    final value = _dependents;
    if (value == null) return null;
    if (_dependents is EqualUnmodifiableListView) return _dependents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _familyGroups;
  @override
  List<dynamic>? get familyGroups {
    final value = _familyGroups;
    if (value == null) return null;
    if (_familyGroups is EqualUnmodifiableListView) return _familyGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _vaccineRecords;
  @override
  List<dynamic>? get vaccineRecords {
    final value = _vaccineRecords;
    if (value == null) return null;
    if (_vaccineRecords is EqualUnmodifiableListView) return _vaccineRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _usersAllergies;
  @override
  List<dynamic>? get usersAllergies {
    final value = _usersAllergies;
    if (value == null) return null;
    if (_usersAllergies is EqualUnmodifiableListView) return _usersAllergies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? expiration;
  @override
  final bool? isSuccess;
  @override
  final dynamic errors;

  @override
  String toString() {
    return 'User(id: $id, userName: $userName, firstName: $firstName, lastName: $lastName, token: $token, birthdate: $birthdate, photo: $photo, dependents: $dependents, familyGroups: $familyGroups, vaccineRecords: $vaccineRecords, usersAllergies: $usersAllergies, expiration: $expiration, isSuccess: $isSuccess, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            const DeepCollectionEquality()
                .equals(other._dependents, _dependents) &&
            const DeepCollectionEquality()
                .equals(other._familyGroups, _familyGroups) &&
            const DeepCollectionEquality()
                .equals(other._vaccineRecords, _vaccineRecords) &&
            const DeepCollectionEquality()
                .equals(other._usersAllergies, _usersAllergies) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userName,
      firstName,
      lastName,
      token,
      birthdate,
      photo,
      const DeepCollectionEquality().hash(_dependents),
      const DeepCollectionEquality().hash(_familyGroups),
      const DeepCollectionEquality().hash(_vaccineRecords),
      const DeepCollectionEquality().hash(_usersAllergies),
      expiration,
      isSuccess,
      const DeepCollectionEquality().hash(errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {final String? id,
      final String? userName,
      final String? firstName,
      final String? lastName,
      final String? token,
      final String? birthdate,
      final String? photo,
      final List<dynamic>? dependents,
      final List<dynamic>? familyGroups,
      final List<dynamic>? vaccineRecords,
      final List<dynamic>? usersAllergies,
      final String? expiration,
      final bool? isSuccess,
      final dynamic errors}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String? get id;
  @override
  String? get userName;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get token;
  @override
  String? get birthdate;
  @override
  String? get photo;
  @override
  List<dynamic>? get dependents;
  @override
  List<dynamic>? get familyGroups;
  @override
  List<dynamic>? get vaccineRecords;
  @override
  List<dynamic>? get usersAllergies;
  @override
  String? get expiration;
  @override
  bool? get isSuccess;
  @override
  dynamic get errors;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
