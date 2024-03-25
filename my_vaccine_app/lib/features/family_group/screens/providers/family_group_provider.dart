
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_vaccine_app/data/configure_dependencies.dart';
import 'package:my_vaccine_app/features/family_group/domain/entities/family_group_model.dart';
import 'package:my_vaccine_app/features/family_group/domain/repositories/family_group_repository.dart';
import 'package:my_vaccine_app/features/family_group/infrastructure/repositories/family_group_repository_impl.dart';

final familyGroupServiceProvider = Provider<FamilyGroupRepository>((ref) {
  return getIt<FamilyGroupRepository>();
});

final familyGroupProvider = FutureProvider<List<FamilyGroup>>((ref) async {
  final service = ref.watch(familyGroupServiceProvider);
  return service.fetchFamilyGroups();
});