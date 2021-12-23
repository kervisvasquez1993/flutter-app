import 'package:app_delivery_redvital/screens/widgets/widget.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuraciones'),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Text("hola"),
      ),
    );
  }
}
