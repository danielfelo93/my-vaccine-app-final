import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_vaccine_app/config/router/app_router_notifier.dart';
import 'package:my_vaccine_app/features/auth/screens/check_auth_status_screen.dart';
import 'package:my_vaccine_app/features/auth/screens/login_screen.dart';
import 'package:my_vaccine_app/features/auth/screens/providers/auth_provider.dart';
import 'package:my_vaccine_app/features/auth/screens/providers/login_form_provider.dart';
import 'package:my_vaccine_app/features/auth/screens/register_screen.dart';
import 'package:my_vaccine_app/features/home/screens/home_screen.dart';

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
        builder: (context, state) {
          if (ref.read(authProvider).authStatus == AuthStatus.authenticated) {
            return HomeScreen();
          } else {
            return CheckAuthStatusScreen();
          }
        },
      ),
    ],
    redirect: (context, state) {
      final isGoingTo = state.matchedLocation;
      final authStatus = goRouterNotifier.authStatus;
      if (isGoingTo == '/home' && ref.read(loginFormProvider).user?.token !=null) {
        return isGoingTo;
      } else if (isGoingTo == '/home' &&
          authStatus != AuthStatus.authenticated) {
        return '/login';
      }

      if (isGoingTo == '/splash' && authStatus == AuthStatus.checking)
        return null;

      if (authStatus == AuthStatus.notAuthenticated) {
        if (isGoingTo == '/login' || isGoingTo == '/register') return null;

        return '/login';
      }

      if (authStatus == AuthStatus.authenticated) {
        if (isGoingTo == '/login' ||
            isGoingTo == '/register' ||
            isGoingTo == '/splash') {
          return '/';
        }
      }

      return null;
    },
  );
});
