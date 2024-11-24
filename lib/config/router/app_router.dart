import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_vaccine_app/features/auth/auth.dart';
import 'package:my_vaccine_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:my_vaccine_app/features/dependent/screens/dependent_view_screen.dart';
import 'package:my_vaccine_app/features/family-groups/screens/family-group-screen.dart';
import 'package:my_vaccine_app/features/home/presentation/screens/home_screen.dart';
import 'package:my_vaccine_app/features/vaccine-records/screens/vaccine-records-screen.dart';

import 'app_router_notifier.dart';

final goRouterProvider = Provider((ref) {

  final goRouterNotifier = ref.read(goRouterNotifierProvider);

  return GoRouter(
    initialLocation: '/splash',
    refreshListenable: goRouterNotifier,
    routes: [
      ///* Primera pantalla
      GoRoute(
        path: '/splash',
        builder: (context, state) => const CheckAuthStatusScreen(),
      ),

      ///* Auth Routes
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterScreen(),
      ),

      ///* Product Routes
      GoRoute(
        path: '/',
        builder: (context, state) =>  HomeScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => HomeScreen(),
      ),
     
      GoRoute(
        path: '/family-groups',
        builder: (context, state) => FamilyGroupsScreen(),
      ),

      GoRoute(
        path: '/dependencies',
        builder: (context, state) => DependentsListScreen(),
      ),

      GoRoute(
        path: '/vaccination-records',
        builder: (context, state) => VaccineRecordsScreen(),
      ),
    ],

    redirect: (context, state) {
      
      final isGoingTo = state.matchedLocation;
      final authStatus = goRouterNotifier.authStatus;

      if ( isGoingTo == '/splash' && authStatus == AuthStatus.checking ) return null;

      if ( authStatus == AuthStatus.notAuthenticated ) {
        if ( isGoingTo == '/login' || isGoingTo == '/register' ) return null;

        return '/login';
      }

      if ( authStatus == AuthStatus.authenticated ) {
        if ( isGoingTo == '/login' || isGoingTo == '/register' || isGoingTo == '/splash' ){
           return '/';
        }
      }


      return null;
    },
  );
});
