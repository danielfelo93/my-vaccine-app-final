import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_vaccine_app/features/dependent/domain/entities/dependent.dart';
import 'package:my_vaccine_app/features/dependent/domain/repositories/dependent_repository.dart';
import 'package:my_vaccine_app/features/shared/infrastructure/services/key_value_storage_service_impl.dart';
import 'package:my_vaccine_app/features/shared/widgets/side_menu.dart';

class DependentsListScreen extends StatelessWidget {
  final DependentRepositoryImpl repository = DependentRepositoryImpl();
  final keyValueStorageService = KeyValueStorageServiceImpl();
  final token = '';

  DependentsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      drawer: SideMenu(scaffoldKey: scaffoldKey), //
      appBar: AppBar(
        title: const Text('Dependents'),
          actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => showAddDialog(context),
          ),
        ],
      ),
      // body: FutureBuilder<List<Dependent?>>(
      //   future: repository.GetDependent(
      //       ref.watch(authProvider).userInfo?.userId ?? 0),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return Center(child: CircularProgressIndicator());
      //     } else if (snapshot.hasError) {
      //       return Center(child: Text('Error: ${snapshot.error}'));
      //     } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
      //       return Center(child: Text('No dependents found'));
      //     } else {
      //       return ListView.builder(
      //         itemCount: snapshot.data!.length,
      //         itemBuilder: (context, index) {
      //           Dependent? dependent = snapshot.data![index];
      //           if (dependent != null) {
      //             return DependentDetailCard(dependent: dependent);
      //           } else {
      //             return SizedBox.shrink();
      //           }
      //         },
      //       );
      //     }
      //   },
      // ),
      body: const Text('DependentsListScreen'),
    );
  }
}

class DependentDetailCard extends StatelessWidget {
  final Dependent dependent;

  const DependentDetailCard({super.key, required this.dependent});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.person),
        title: Text(dependent.name),
        subtitle: Text('DOB: ${dependent.dateOfBirth}'),
         trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                // Acción para actualizar
                // Por ejemplo: Navigator.pushNamed(context, '/edit-dependent', arguments: dependent);
              },
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                // Acción para eliminar
                // Puedes mostrar un diálogo de confirmación aquí antes de proceder
              },
            ),
            IconButton(
              icon: const Icon(Icons.medical_services),
              onPressed: () {
                // Acción para ver vacunas
                // Por ejemplo: Navigator.pushNamed(context, '/dependent-vaccines', arguments: dependent);
              },
            ),
          ],
        ),
      ),
    );
  }
}
void showAddDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Agregar Nuevo Elemento'),
        content: Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nombre'),
              ),
              // Otros campos del formulario
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancelar'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          TextButton(
            child: const Text('Guardar'),
            onPressed: () {
              // Lógica para guardar la información
            },
          ),
        ],
      );
    },
  );
}
