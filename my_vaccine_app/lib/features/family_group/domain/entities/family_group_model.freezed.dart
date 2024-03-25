// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FamilyGroup _$FamilyGroupFromJson(Map<String, dynamic> json) {
  return _FamilyGroup.fromJson(json);
}

/// @nodoc
mixin _$FamilyGroup {
  String get familyGroupId => throw _privateConstructorUsedError;
  List<dynamic>? get dependents =>
      throw _privateConstructorUsedError; // Considera definir un modelo más específico para dependents si es necesario
  String get name => throw _privateConstructorUsedError;

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
  $Res call({String familyGroupId, List<dynamic>? dependents, String name});
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
    Object? familyGroupId = null,
    Object? dependents = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      familyGroupId: null == familyGroupId
          ? _value.familyGroupId
          : familyGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      dependents: freezed == dependents
          ? _value.dependents
          : dependents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String familyGroupId, List<dynamic>? dependents, String name});
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
    Object? familyGroupId = null,
    Object? dependents = freezed,
    Object? name = null,
  }) {
    return _then(_$FamilyGroupImpl(
      familyGroupId: null == familyGroupId
          ? _value.familyGroupId
          : familyGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      dependents: freezed == dependents
          ? _value._dependents
          : dependents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyGroupImpl implements _FamilyGroup {
  _$FamilyGroupImpl(
      {required this.familyGroupId,
      final List<dynamic>? dependents,
      required this.name})
      : _dependents = dependents;

  factory _$FamilyGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyGroupImplFromJson(json);

  @override
  final String familyGroupId;
  final List<dynamic>? _dependents;
  @override
  List<dynamic>? get dependents {
    final value = _dependents;
    if (value == null) return null;
    if (_dependents is EqualUnmodifiableListView) return _dependents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Considera definir un modelo más específico para dependents si es necesario
  @override
  final String name;

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
      {required final String familyGroupId,
      final List<dynamic>? dependents,
      required final String name}) = _$FamilyGroupImpl;

  factory _FamilyGroup.fromJson(Map<String, dynamic> json) =
      _$FamilyGroupImpl.fromJson;

  @override
  String get familyGroupId;
  @override
  List<dynamic>? get dependents;
  @override // Considera definir un modelo más específico para dependents si es necesario
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$FamilyGroupImplCopyWith<_$FamilyGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
