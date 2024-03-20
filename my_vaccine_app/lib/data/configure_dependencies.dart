import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:my_vaccine_app/data/injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future configureDependencies(String environment) async 
{
  getIt.init(environment: environment);
}