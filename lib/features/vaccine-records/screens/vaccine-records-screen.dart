import 'package:flutter/material.dart';
import 'package:my_vaccine_app/features/shared/widgets/side_menu.dart';

class VaccineRecordsScreen extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(scaffoldKey: scaffoldKey),
      appBar: AppBar(
        title: Text('Vaccine Records'),
      ),
      body: Container(
          // Add your widget tree here
          ),
    );
  }
}
