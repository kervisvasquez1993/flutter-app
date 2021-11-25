import 'package:app_delivery_redvital/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ordendes = Provider.of<OrderProvider>(context);
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: MaterialButton(
              onPressed: () {
                ordendes.obtenerOrdenes();
              },
              child: Text('llamar'),
            ),
          ),
        ),
      ),
    );
  }
}
