import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:my_vaccine_app/config/constants/environment.dart';
import 'package:my_vaccine_app/config/router/app_router.dart';
import 'package:my_vaccine_app/config/theme/app_theme.dart';
import 'package:my_vaccine_app/data/injector.dart';
import 'package:my_vaccine_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:my_vaccine_app/features/auth/infrastructure/repositories/auth_repository.dart';
import 'package:my_vaccine_app/features/shared/infrastructure/services/key_value_storage_service.dart';
import 'package:my_vaccine_app/features/shared/infrastructure/services/key_value_storage_service_impl.dart';

Future<void> main() async {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  await Environment.initEnvironment();
    await configure(dev.name);

  // Initialize GetIt
  late final GetIt getIt = GetIt.instance;

  // Register your dependencies with GetIt
  getIt.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  getIt.registerSingleton<KeyValueStorageService>(KeyValueStorageServiceImpl());
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget  {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
        final appRouter = ref.watch( goRouterProvider );

    return  MaterialApp.router(
      title: "My Vaccine App",
       theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter
    );
  }
}