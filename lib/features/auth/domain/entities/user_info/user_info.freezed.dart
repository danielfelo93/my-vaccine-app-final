// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return _UserInfo.fromJson(json);
}

/// @nodoc
mixin _$UserInfo {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'userName')
  String? get email => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastName')
  String? get lastName => throw _privateConstructorUsedError;
  DateTime? get birthdate => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  List<dynamic>? get dependents => throw _privateConstructorUsedError;
  List<FamilyGroup>? get familyGroups => throw _privateConstructorUsedError;
  List<dynamic>? get vaccineRecords => throw _privateConstructorUsedError;
  List<dynamic>? get usersAllergies => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  DateTime? get expiration => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  dynamic? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'userName') String? email,
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
      dynamic? errors});
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? birthdate = freezed,
    Object? photo = freezed,
    Object? dependents = freezed,
    Object? familyGroups = freezed,
    Object? vaccineRecords = freezed,
    Object? usersAllergies = freezed,
    Object? token = freezed,
    Object? expiration = freezed,
    Object? isSuccess = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
              as List<FamilyGroup>?,
      vaccineRecords: freezed == vaccineRecords
          ? _value.vaccineRecords
          : vaccineRecords // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      usersAllergies: freezed == usersAllergies
          ? _value.usersAllergies
          : usersAllergies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoImplCopyWith<$Res>
    implements $UserInfoCopyWith<$Res> {
  factory _$$UserInfoImplCopyWith(
          _$UserInfoImpl value, $Res Function(_$UserInfoImpl) then) =
      __$$UserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'userName') String? email,
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
      dynamic? errors});
}

/// @nodoc
class __$$UserInfoImplCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$UserInfoImpl>
    implements _$$UserInfoImplCopyWith<$Res> {
  __$$UserInfoImplCopyWithImpl(
      _$UserInfoImpl _value, $Res Function(_$UserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? birthdate = freezed,
    Object? photo = freezed,
    Object? dependents = freezed,
    Object? familyGroups = freezed,
    Object? vaccineRecords = freezed,
    Object? usersAllergies = freezed,
    Object? token = freezed,
    Object? expiration = freezed,
    Object? isSuccess = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$UserInfoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
              as List<FamilyGroup>?,
      vaccineRecords: freezed == vaccineRecords
          ? _value._vaccineRecords
          : vaccineRecords // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      usersAllergies: freezed == usersAllergies
          ? _value._usersAllergies
          : usersAllergies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoImpl implements _UserInfo {
  _$UserInfoImpl(
      {this.id,
      @JsonKey(name: 'userName') this.email,
      this.firstName,
      @JsonKey(name: 'lastName') this.lastName,
      this.birthdate,
      this.photo,
      final List<dynamic>? dependents,
      final List<FamilyGroup>? familyGroups,
      final List<dynamic>? vaccineRecords,
      final List<dynamic>? usersAllergies,
      this.token,
      this.expiration,
      this.isSuccess,
      this.errors})
      : _dependents = dependents,
        _familyGroups = familyGroups,
        _vaccineRecords = vaccineRecords,
        _usersAllergies = usersAllergies;

  factory _$UserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'userName')
  final String? email;
  @override
  final String? firstName;
  @override
  @JsonKey(name: 'lastName')
  final String? lastName;
  @override
  final DateTime? birthdate;
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

  final List<FamilyGroup>? _familyGroups;
  @override
  List<FamilyGroup>? get familyGroups {
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
  final String? token;
  @override
  final DateTime? expiration;
  @override
  final bool? isSuccess;
  @override
  final dynamic? errors;

  @override
  String toString() {
    return 'UserInfo(id: $id, email: $email, firstName: $firstName, lastName: $lastName, birthdate: $birthdate, photo: $photo, dependents: $dependents, familyGroups: $familyGroups, vaccineRecords: $vaccineRecords, usersAllergies: $usersAllergies, token: $token, expiration: $expiration, isSuccess: $isSuccess, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
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
            (identical(other.token, token) || other.token == token) &&
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
      email,
      firstName,
      lastName,
      birthdate,
      photo,
      const DeepCollectionEquality().hash(_dependents),
      const DeepCollectionEquality().hash(_familyGroups),
      const DeepCollectionEquality().hash(_vaccineRecords),
      const DeepCollectionEquality().hash(_usersAllergies),
      token,
      expiration,
      isSuccess,
      const DeepCollectionEquality().hash(errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      __$$UserInfoImplCopyWithImpl<_$UserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoImplToJson(
      this,
    );
  }
}

abstract class _UserInfo implements UserInfo {
  factory _UserInfo(
      {final String? id,
      @JsonKey(name: 'userName') final String? email,
      final String? firstName,
      @JsonKey(name: 'lastName') final String? lastName,
      final DateTime? birthdate,
      final String? photo,
      final List<dynamic>? dependents,
      final List<FamilyGroup>? familyGroups,
      final List<dynamic>? vaccineRecords,
      final List<dynamic>? usersAllergies,
      final String? token,
      final DateTime? expiration,
      final bool? isSuccess,
      final dynamic? errors}) = _$UserInfoImpl;

  factory _UserInfo.fromJson(Map<String, dynamic> json) =
      _$UserInfoImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'userName')
  String? get email;
  @override
  String? get firstName;
  @override
  @JsonKey(name: 'lastName')
  String? get lastName;
  @override
  DateTime? get birthdate;
  @override
  String? get photo;
  @override
  List<dynamic>? get dependents;
  @override
  List<FamilyGroup>? get familyGroups;
  @override
  List<dynamic>? get vaccineRecords;
  @override
  List<dynamic>? get usersAllergies;
  @override
  String? get token;
  @override
  DateTime? get expiration;
  @override
  bool? get isSuccess;
  @override
  dynamic? get errors;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FamilyGroup _$FamilyGroupFromJson(Map<String, dynamic> json) {
  return _FamilyGroup.fromJson(json);
}

/// @nodoc
mixin _$FamilyGroup {
  String? get familyGroupId => throw _privateConstructorUsedError;
  List<dynamic>? get dependents => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyGroupCopyWith<FamilyGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyGroupCopyWith<$Res> {
  factory $FamilyGroupCopyWith(
          FamilyGroup value, $Res Function(FamilyGroup) then) =
      _$FamilyGroupCopyWithImpl<$Res, FamilyGroup>;
  @useResult
  $Res call({String? familyGroupId, List<dynamic>? dependents, String? name});
}

/// @nodoc
class _$FamilyGroupCopyWithImpl<$Res, $Val extends FamilyGroup>
    implements $FamilyGroupCopyWith<$Res> {
  _$FamilyGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? familyGroupId = freezed,
    Object? dependents = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      familyGroupId: freezed == familyGroupId
          ? _value.familyGroupId
          : familyGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
      dependents: freezed == dependents
          ? _value.dependents
          : dependents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FamilyGroupImplCopyWith<$Res>
    implements $FamilyGroupCopyWith<$Res> {
  factory _$$FamilyGroupImplCopyWith(
          _$FamilyGroupImpl value, $Res Function(_$FamilyGroupImpl) then) =
      __$$FamilyGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? familyGroupId, List<dynamic>? dependents, String? name});
}

/// @nodoc
class __$$FamilyGroupImplCopyWithImpl<$Res>
    extends _$FamilyGroupCopyWithImpl<$Res, _$FamilyGroupImpl>
    implements _$$FamilyGroupImplCopyWith<$Res> {
  __$$FamilyGroupImplCopyWithImpl(
      _$FamilyGroupImpl _value, $Res Function(_$FamilyGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? familyGroupId = freezed,
    Object? dependents = freezed,
    Object? name = freezed,
  }) {
    return _then(_$FamilyGroupImpl(
      familyGroupId: freezed == familyGroupId
          ? _value.familyGroupId
          : familyGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
      dependents: freezed == dependents
          ? _value._dependents
          : dependents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyGroupImpl implements _FamilyGroup {
  _$FamilyGroupImpl(
      {this.familyGroupId, final List<dynamic>? dependents, this.name})
      : _dependents = dependents;

  factory _$FamilyGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyGroupImplFromJson(json);

  @override
  final String? familyGroupId;
  final List<dynamic>? _dependents;
  @override
  List<dynamic>? get dependents {
    final value = _dependents;
    if (value == null) return null;
    if (_dependents is EqualUnmodifiableListView) return _dependents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;

  @override
  String toString() {
    return 'FamilyGroup(familyGroupId: $familyGroupId, dependents: $dependents, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyGroupImpl &&
            (identical(other.familyGroupId, familyGroupId) ||
                other.familyGroupId == familyGroupId) &&
            const DeepCollectionEquality()
                .equals(other._dependents, _dependents) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, familyGroupId,
      const DeepCollectionEquality().hash(_dependents), name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyGroupImplCopyWith<_$FamilyGroupImpl> get copyWith =>
      __$$FamilyGroupImplCopyWithImpl<_$FamilyGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyGroupImplToJson(
      this,
    );
  }
}

abstract class _FamilyGroup implements FamilyGroup {
  factory _FamilyGroup(
      {final String? familyGroupId,
      final List<dynamic>? dependents,
      final String? name}) = _$FamilyGroupImpl;

  factory _FamilyGroup.fromJson(Map<String, dynamic> json) =
      _$FamilyGroupImpl.fromJson;

  @override
  String? get familyGroupId;
  @override
  List<dynamic>? get dependents;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$FamilyGroupImplCopyWith<_$FamilyGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
