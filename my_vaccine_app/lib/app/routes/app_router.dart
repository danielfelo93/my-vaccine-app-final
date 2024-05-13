import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_vaccine_app/app/di/injector.dart';
import 'package:my_vaccine_app/app/routes/route_utils.dart';
import 'package:my_vaccine_app/app/routes/screens/not_found_page.dart';
import 'package:my_vaccine_app/app/routes/screens/products.dart';
import 'package:my_vaccine_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:my_vaccine_app/features/auth/presentation/screens/home_screen.dart';
import 'package:my_vaccine_app/features/auth/presentation/screens/login_screen.dart';


class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: PAGES.home.screenPath,
        name: PAGES.home.screenName,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              injector<AuthBloc>()..add(const IsLoggedInEvent()),
          child:  HomeScreen(),
        ),
      ),
      GoRoute(
        path: PAGES.homeScreen.screenPath,
        name: PAGES.homeScreen.screenName,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              injector<AuthBloc>()..add(const IsLoggedInEvent()),
          child:  HomeScreen(),
        ),
      ),
      GoRoute(
        path: PAGES.products.screenPath,
        name: PAGES.products.screenName,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              injector<AuthBloc>()..add(const IsLoggedInEvent()),
          child: const ProductsScreen()
        ),
      ),
      GoRoute(
        path: PAGES.login.screenPath,
        name: PAGES.login.screenName,
        builder: (context, state) => BlocProvider(
          create: (context) => injector<AuthBloc>(),
          child: const LoginScreen(),
        ),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );

  static GoRouter get router => _router;
}
