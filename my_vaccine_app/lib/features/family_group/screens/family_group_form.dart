import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_vaccine_app/features/family_group/domain/entities/family_group_model.dart';
import 'package:my_vaccine_app/features/family_group/screens/providers/family_group_provider.dart';
import 'package:my_vaccine_app/features/shared/widgets/side_menu.dart';


class FamilyGroupFormScreen extends ConsumerWidget {
  final FamilyGroup? initialGroup;

  const FamilyGroupFormScreen({Key? key, this.initialGroup}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController _nameController = TextEditingController(text: initialGroup?.name ?? '');

  final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      drawer: SideMenu(scaffoldKey: scaffoldKey),
      appBar: AppBar(
        backgroundColor: Colors.green[700], //Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
            color: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nombre'),
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Por favor, ingrese un nombre';
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final group = FamilyGroup(name: _nameController.text, dependents: [], familyGroupId: initialGroup?.familyGroupId ?? '');
                    if (initialGroup == null) {
                      await ref.read(familyGroupServiceProvider).addFamilyGroup(group);
                    } else {
                      await ref.read(familyGroupServiceProvider).updateFamilyGroup(group.familyGroupId, group);
                    }
                    context.go('/family-groups');
                  }
                },
                child: Text(initialGroup == null ? 'Crear' : 'Actualizar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
