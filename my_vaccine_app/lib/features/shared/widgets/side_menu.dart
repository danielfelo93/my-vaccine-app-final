import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_vaccine_app/features/auth/screens/providers/auth_provider.dart';
import 'package:my_vaccine_app/features/auth/screens/providers/login_form_provider.dart';
import 'package:my_vaccine_app/features/shared/widgets/custom_filled_button.dart';

class SideMenu extends ConsumerStatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({super.key, required this.scaffoldKey});

  @override
  SideMenuState createState() => SideMenuState();
}

class SideMenuState extends ConsumerState<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;
    final textStyles = Theme.of(context).textTheme;
    final loginForm = ref.watch(loginFormProvider);

    return NavigationDrawer(
        elevation: 1,
        selectedIndex: navDrawerIndex,
        onDestinationSelected: (value) {
          setState(() {
            navDrawerIndex = value;
          });

          // final menuItem = appMenuItems[value];
          // context.push( menuItem.link );
          if (value == 2) {
            // Asume que "Family Group" está en el índice 2
            context.pushReplacement('/family-groups'); // Usa go_router para navegar
          }

          widget.scaffoldKey.currentState?.closeDrawer();
        },
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: loginForm.userPhoto?.image ??
                const AssetImage('assets/images/no-image.jpg'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, hasNotch ? 0 : 20, 16, 0),
            child: Text('¡Hola!', style: textStyles.titleMedium),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 16, 10),
            child: Text(
                '${loginForm.user?.firstName} ${loginForm.user?.lastName}',
                style: textStyles.titleSmall),
          ),
          const NavigationDrawerDestination(
            icon: Icon(Icons.home_outlined),
            label: Text('Home'),
          ),
          const NavigationDrawerDestination(
            icon: Icon(Icons.child_care_outlined),
            label: Text('Dependents'),
          ),
          const NavigationDrawerDestination(
            icon: Icon(Icons.family_restroom),
            label: Text('Family Group'),
          ),
          const NavigationDrawerDestination(
            icon: Icon(Icons.vaccines_outlined),
            label: Text('Vaccination Records'),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
            child: Text('Otras opciones'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomFilledButton(
                onPressed: () {
                  ref.read(authProvider.notifier).logout(null);
                },
                text: 'Cerrar sesión'),
          ),
        ]);
  }
}
