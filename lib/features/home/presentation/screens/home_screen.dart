import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_vaccine_app/config/theme/colors_my_vaccine_app.dart';
import 'package:my_vaccine_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:my_vaccine_app/features/shared/widgets/side_menu.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({Key? key}) : super(key: key);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    final user = authState.user;

    var fullName = '${user?.firstName ?? ''} ${user?.lastName ?? ''}';

    return Scaffold(
      drawer: SideMenu(scaffoldKey: scaffoldKey),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).copyWith(primaryColor: secondaryColor).primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                    title: Text('Hello $fullName!',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: Colors.white)),
                    subtitle: Text('Good Morning',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: Colors.white54)),
                    // trailing: const CircleAvatar(
                    //   radius: 30,
                    //   backgroundImage:
                    //       AssetImage('assets/images/defaultuser.jpg'),
                    // ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
