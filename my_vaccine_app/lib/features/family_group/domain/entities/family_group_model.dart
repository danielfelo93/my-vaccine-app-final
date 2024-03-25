import 'package:freezed_annotation/freezed_annotation.dart';

part 'family_group_model.freezed.dart';
part 'family_group_model.g.dart';

@freezed
class FamilyGroup with _$FamilyGroup {
  factory FamilyGroup({
    required String familyGroupId,
    List<dynamic>? dependents, // Considera definir un modelo más específico para dependents si es necesario
    required String name,
  }) = _FamilyGroup;

  factory FamilyGroup.fromJson(Map<String, dynamic> json) => _$FamilyGroupFromJson(json);
}
