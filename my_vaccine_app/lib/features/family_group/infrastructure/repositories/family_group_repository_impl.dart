import 'package:my_vaccine_app/data/injector.dart';
import 'package:my_vaccine_app/features/family_group/domain/datasources/family_group_datasource.dart';
import 'package:my_vaccine_app/features/family_group/domain/entities/family_group_model.dart';
import 'package:my_vaccine_app/features/family_group/domain/repositories/family_group_repository.dart';

class FamilyGroupRepositoryImpl implements FamilyGroupRepository {
  @override
  Future<List<FamilyGroup>> fetchFamilyGroups() async {
    var  datasource = getIt<FamilyGroupDatasource>();
    return await datasource.fetchFamilyGroups();
  }
  
  @override
  addFamilyGroup(FamilyGroup familyGroup) async{
   var  datasource = getIt<FamilyGroupDatasource>();
    return await datasource.addFamilyGroup(familyGroup);
  }
  
  @override
  updateFamilyGroup(String familyGroupId, FamilyGroup familyGroup) async {
    var  datasource = getIt<FamilyGroupDatasource>();
    return await datasource.updateFamilyGroup(familyGroupId, familyGroup);
  }

  @override
  deleteFamilyGroup(String familyGroupId) async {
    var  datasource = getIt<FamilyGroupDatasource>();
     await datasource.deleteFamilyGroup(familyGroupId);
  }
}