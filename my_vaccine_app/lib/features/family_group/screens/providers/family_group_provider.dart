
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_vaccine_app/data/configure_dependencies.dart';
import 'package:my_vaccine_app/features/family_group/domain/entities/family_group_model.dart';
import 'package:my_vaccine_app/features/family_group/domain/repositories/family_group_repository.dart';
import 'package:my_vaccine_app/features/family_group/infrastructure/repositories/family_group_repository_impl.dart';

final familyGroupServiceProvider = Provider<FamilyGroupRepository>((ref) {
  return getIt<FamilyGroupRepository>();
});

// final familyGroupProvider = FutureProvider<List<FamilyGroup>>((ref) async {
//   final service = ref.watch(familyGroupServiceProvider);
//   return service.fetchFamilyGroups();
// });
 final familyGroupProvider =FutureProvider.autoDispose<List<FamilyGroup>>((ref) async {
  final service = ref.read(familyGroupServiceProvider);
  return service.fetchFamilyGroups();
});
// Provider para manejar la operación de crear un FamilyGroup
final addFamilyGroupProvider = FutureProvider.family<void, FamilyGroup>((ref, familyGroup) async {
  final service = ref.read(familyGroupServiceProvider);
  await service.addFamilyGroup(familyGroup);
});

// Provider para manejar la operación de actualizar un FamilyGroup
final updateFamilyGroupProvider = FutureProvider.family<void, FamilyGroup>((ref, familyGroup) async {
  final service = ref.read(familyGroupServiceProvider);
  await service.updateFamilyGroup(familyGroup.familyGroupId, familyGroup);
});