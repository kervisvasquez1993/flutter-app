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
      body: Container(
        child: Center(
          child: Text("data"),
        ),
      ),
    );
  }
}
