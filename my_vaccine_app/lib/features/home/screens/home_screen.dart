import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_vaccine_app/features/auth/screens/providers/login_form_provider.dart';

class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
        final loginForm = ref.watch(loginFormProvider);

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.green[700], //Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(50))
                    ),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    "Welcome ${loginForm.user?.firstName}",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.white),
                  ),
                  subtitle: Text(
                    "Your health is our priority",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white),
                  ),
                  trailing: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        const AssetImage('assets/images/no-image.jpg'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
