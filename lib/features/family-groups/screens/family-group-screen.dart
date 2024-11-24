import 'package:flutter/material.dart';
import 'package:my_vaccine_app/features/shared/shared.dart';

class FamilyGroupsScreen extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  FamilyGroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(scaffoldKey: scaffoldKey),
      appBar: AppBar(
        title: const Text('Family Groups'),
      ),
      body: Container(
          // Add your widget tree here
          ),
    );
  }
}
