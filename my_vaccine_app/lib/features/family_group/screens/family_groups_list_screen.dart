import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_vaccine_app/features/family_group/screens/providers/family_group_provider.dart';
import 'package:my_vaccine_app/features/shared/widgets/side_menu.dart';

class FamilyGroupsScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.refresh(familyGroupProvider);
    final familyGroups = ref.watch(familyGroupProvider);
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
      body: familyGroups.when(
        data: (groups) => ListView.builder(
          itemCount: groups.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              title: Text(groups[index].name),
              subtitle:
                  Text('Dependientes: ${groups[index].dependents?.length??0}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: () {
                      // Navegar a la pantalla de detalles
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      // Navegar a la pantalla de edición
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Llamar al método para eliminar
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        loading: () => CircularProgressIndicator(),
        error: (error, stack) => Center(child: Text('Ocurrió un error')),
      ),
    
       floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushReplacement('/family-groups-form'), // Ruta a tu pantalla de formulario en modo de creación
        child: Icon(Icons.add),
      ),);
  }
}
