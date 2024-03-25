import 'package:my_vaccine_app/features/family_group/domain/entities/family_group_model.dart';

abstract class FamilyGroupDatasource {
  Future<List<FamilyGroup>> fetchFamilyGroups();
}
