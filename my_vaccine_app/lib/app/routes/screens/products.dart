import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_vaccine_app/app/routes/app_router.dart';
import 'package:my_vaccine_app/app/routes/route_utils.dart';
import 'package:my_vaccine_app/features/auth/presentation/bloc/auth_bloc.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Widget finalView;

    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.when(
              initial: () {},
              success: (s){},
              failed: () => AppRouter.router.go(PAGES.login.screenPath));
        },
        builder: (context, state) {
          state.when(
              initial: () => finalView = const SizedBox(),
              success: (r) => finalView = Center(
                child: TextButton(
                  child: const Text(
                    'Logout from Products Screen',
                  ),
                  onPressed: () {
                    context.read<AuthBloc>().loginUseCase(false);
                    AppRouter.router.go(PAGES.login.screenPath);
                  },
                ),
              ),
              failed: () {
                finalView = const SizedBox();
                //AppRouter.router.go(PAGES.login.screenPath);
              },
          );
          return finalView;
        },
      ),
    );
  }
}
