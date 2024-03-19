import 'package:go_router/go_router.dart';
import 'package:my_vaccine_app/features/login/screens/login_screen.dart';
import 'package:my_vaccine_app/features/login/screens/register_screen.dart';
import 'package:my_vaccine_app/features/products/screens/products_screen.dart';


final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    ///* Auth Routes
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) =>  RegisterScreen(),
    ),

    ///* Product Routes
    GoRoute(
      path: '/',
      builder: (context, state) => const ProductsScreen(),
    ),
  ],
);