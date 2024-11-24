import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_vaccine_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:my_vaccine_app/features/auth/presentation/providers/user_image_provider.dart';
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
    final authState = ref.watch(authProvider);
    final userImage = ref.watch(userImageProvider);

    final profileImage= userImage != null
        ? FileImage(userImage ) as ImageProvider
        : authState.userPhotoProfile?.image;

    return NavigationDrawer(
      elevation: 1,
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });

        //cambiar por un switch case
        if (value == 0) {
          context.pushReplacement('/');
        }

        if (value == 1) {
          context.pushReplacement('/dependencies');
        }

        if (value == 2) {
          context.pushReplacement('/family-groups');
        }

        if (value == 3) {
          context.pushReplacement('/vaccination-records');
        }

        widget.scaffoldKey.currentState?.closeDrawer();
      },
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 100,
             backgroundImage: profileImage != null
                  ? profileImage
                  : const AssetImage('assets/images/no-image.jpg') as ImageProvider,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () async {
                  await _showImageSourceActionSheet(context);
                  await ref.read(userImageProvider.notifier).uploadImage(authState.token ?? '');
                },
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, hasNotch ? 0 : 20, 16, 0),
          child: Text('¡Hola!', style: textStyles.titleMedium),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 16, 10),
          child: Text(
              '${authState.user?.firstName ?? ''} ${authState.user?.lastName ?? ''}',
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
      ],
    );
  }

  Future<void> _showImageSourceActionSheet(BuildContext context) async {
    final result = await showModalBottomSheet<ImageSource>(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera),
              title: const Text('Cámara'),
              onTap: () => Navigator.of(context).pop(ImageSource.camera),
            ),
            ListTile(
              leading: const Icon(Icons.photo_album),
              title: const Text('Galería'),
              onTap: () => Navigator.of(context).pop(ImageSource.gallery),
            ),
          ],
        ),
      ),
    );

    if (result != null) {
      await ref.read(userImageProvider.notifier).pickImage(result);
    }
  }
}
