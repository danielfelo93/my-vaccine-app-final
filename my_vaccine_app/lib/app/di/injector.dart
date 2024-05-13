import 'package:get_it/get_it.dart';
import 'package:my_vaccine_app/features/auth/data/data_sources/auth_local_data_source.dart';
import 'package:my_vaccine_app/features/auth/data/data_sources/auth_local_data_source_impl.dart';
import 'package:my_vaccine_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:my_vaccine_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:my_vaccine_app/features/auth/domain/use_cases/is_logged_in_use_case.dart';
import 'package:my_vaccine_app/features/auth/domain/use_cases/login_use_case.dart';
import 'package:my_vaccine_app/features/auth/presentation/bloc/auth_bloc.dart';

final injector = GetIt.instance;

Future<void> initDependencies() async {

  /// Data Source ///
  injector.registerLazySingleton<AuthLocalDataSource>(() =>
      AuthLocalDataSourceImpl());

  /// Repository ///
  injector.registerLazySingleton<AuthRepository>(
          () => AuthRepositoryImpl(authLocalDataSource: injector()));

  /// UseCase ///
  injector.registerLazySingleton(() =>
      LoginUseCase(authRepository: injector()));
  injector.registerLazySingleton(() =>
      IsLoggedInUseCase(authRepository: injector()));

  /// BloC ///
  injector.registerFactory(() =>
      AuthBloc(isLoggedInUseCase: injector(), loginUseCase: injector()));

  await injector<AuthLocalDataSource>().initDb();
}
