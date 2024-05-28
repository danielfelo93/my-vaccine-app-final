
import 'package:my_vaccine_app/features/dependent/domain/entities/dependent.dart';

abstract class DependentRepository {
  Future<Dependent?> Add(Dependent newDependent);
  Future<Dependent?> Update(Dependent newDependent);
  Future<List<Dependent?>> GetDependent(int userId);
  Future<Dependent?> Delete(int id);
}
