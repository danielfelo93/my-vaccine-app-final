import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_vaccine_app/app/routes/app_router.dart';
import 'package:my_vaccine_app/app/routes/route_utils.dart';
import 'package:my_vaccine_app/features/auth/presentation/bloc/auth_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text(
            'Login',
          ),
          onPressed: (){
            context.read<AuthBloc>().loginUseCase(true);
            AppRouter.router.go(PAGES.home.screenPath);
          },
        ),
      ),
    );
  }
}
