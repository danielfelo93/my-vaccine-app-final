
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:my_vaccine_app/data/configure_dependencies.dart';

GetIt getIt = GetIt.instance;

const dev = Environment('dev');
const staging = Environment('staging');
const prod = Environment('prod');

@InjectableInit(preferRelativeImports: false)
Future<void> configure(String environment) async {
  WidgetsFlutterBinding.ensureInitialized();

 
  // await StorageService.instance.init();

 

  await configureDependencies(environment);

}
