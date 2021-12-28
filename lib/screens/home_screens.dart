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
    final ordenes = Provider.of<OrderService>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('inicio'),
        leading: IconButton(
          onPressed: () {
            print(authService.readToken());
            authService.logout();
            Navigator.pushNamed(context, 'login');
            print("cerrar");
          },
          icon: Icon(Icons.logout_outlined),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'setting_screen');
            },
            icon: Icon(
              Icons.settings,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'show');
          },
          child: TargetaCard(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print(ordenes.ordenes(authService.readToken()));
        },
      ),
    );
  }
}
