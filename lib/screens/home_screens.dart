import 'package:app_delivery_redvital/screens/widgets/tarjeta_card.dart';
import 'package:app_delivery_redvital/screens/widgets/widget.dart';
import 'package:app_delivery_redvital/services/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
          title: Text('inicio'),
          leading: IconButton(
              onPressed: () {
                authService.logout();
                Navigator.pushReplacementNamed(context, 'login');
                print("cerrar");
              },
              icon: Icon(Icons.logout_outlined))),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => TargetaCard()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
